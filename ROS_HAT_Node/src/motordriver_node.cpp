#include "motordriver_node.hpp"

using namespace std::chrono_literals;

// Constructor
MotordriverNode::MotordriverNode() : rclcpp::Node("motordriver_node"), 
    left_i2c_bus_("/dev/i2c-0", 0x12)
    // i2c_file_(-1), 
    // is_i2c_address_set_(-1) 
    {
    // Declare the parameters
    this->declare_parameter("cmd_motor_topic", "cmd_motor");
    this->declare_parameter("encoder_left_topic", "left_encoder");
    this->declare_parameter("encoder_right_topic", "right_encoder");

    // Get the values of the parameters and store them in an attribute of the class
    cmd_motor_topic_ = this->get_parameter("cmd_motor_topic").as_string();
    encoder_left_topic_ = this->get_parameter("encoder_left_topic").as_string();
    encoder_right_topic_ = this->get_parameter("encoder_right_topic").as_string();

    // Subscribe to the topic for motor commands -> messages are RECEIVED from this topic
    motor_commands_subscription_ = this->create_subscription<std_msgs::msg::Int64MultiArray>(
        cmd_motor_topic_, 5, 
        std::bind(&MotordriverNode::motor_commands_callback, this, std::placeholders::_1));

    // Define the publishers for the encoder values -> messages should be send to this topics
    left_encoder_publisher_ = this->create_publisher<std_msgs::msg::Int32>(encoder_left_topic_, 5);
    right_encoder_publisher_ = this->create_publisher<std_msgs::msg::Int32>(encoder_right_topic_, 5);

    timer_ = this->create_wall_timer(25ms, std::bind(&MotordriverNode::encoders_callback, this));
}

// This callback should somehow pass the values for the motors to the motor driver hat using i2c
void MotordriverNode::motor_commands_callback(const std_msgs::msg::Int64MultiArray msg){
    int left_motor = msg.data[0];
    int right_motor = msg.data[1];
    RCLCPP_INFO(this->get_logger(), "motor command recieved. Left = %d, right = %d", left_motor, right_motor);
    
    // also check for right bus
    if (!left_i2c_bus_.is_ready()) {
        if (left_i2c_bus_.open_bus()) {
            RCLCPP_INFO(this->get_logger(), "LEFT i2c bus is open");
        } else {
            RCLCPP_WARN(this->get_logger(), "Failed to open the LEFT i2c bus");
        }
        if (left_i2c_bus_.set_address()) {
            RCLCPP_INFO(this->get_logger(), "i2c address of the LEFT slave is set");
        } else {
            RCLCPP_WARN(this->get_logger(), "Failed to set the i2c address of the LEFT slave");
        }
    }

    // send the motor commands over the seperate busses
    int left_write_buffer[WRITE_BUFFER_SIZE] = {left_motor, right_motor, 0, 0, 0, 0};
    if (left_i2c_bus_.write_motor_cmds(left_write_buffer)) {
        RCLCPP_INFO(this->get_logger(), "Values successfully sent over LEFT i2c bus");
    } else {
        RCLCPP_WARN(this->get_logger(), "Failed to send values over LEFT i2c bus");
    }
}

void MotordriverNode::encoders_callback(){
    int left_read_buffer[READ_BUFFER_SIZE];
    if (left_i2c_bus_.read_encoder_vals(left_read_buffer)) {
        RCLCPP_INFO(this->get_logger(), "Values successfully read from LEFT i2c: [%d, %d, %d, %d, %d, %d]", 
            left_read_buffer[0], left_read_buffer[1], left_read_buffer[2], left_read_buffer[3], 
            left_read_buffer[4], left_read_buffer[5]);
        std_msgs::msg::Int32 left_enc_val, right_enc_val;
        left_enc_val.data = left_read_buffer[0];
        right_enc_val.data = left_read_buffer[1];

        left_encoder_publisher_->publish(left_enc_val);
        right_encoder_publisher_->publish(right_enc_val);
    } else {
        RCLCPP_WARN(this->get_logger(), "Failed to read values from LEFT i2c");
    }
}

int main(int argc, char *argv[])
{
    rclcpp::init(argc, argv);
    auto motordriver_node = std::make_shared<MotordriverNode>();
    rclcpp::spin(motordriver_node);
    rclcpp::shutdown();
    return 0;
}