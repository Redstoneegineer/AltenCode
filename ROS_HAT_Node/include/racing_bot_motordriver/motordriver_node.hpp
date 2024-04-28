#include <string>
#include <chrono>
#include <functional>
// remove below
#include <stdint.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <linux/i2c-dev.h>

#include "rclcpp/rclcpp.hpp"
#include "std_msgs/msg/int64_multi_array.hpp"
#include "std_msgs/msg/int32.hpp"
#include "i2c_handler.hpp"

#ifndef MOTORDRIVER_NODE_H
#define MOTORDRIVER_NODE_H

#define I2C_DEVICE "/dev/i2c-0"
#define STM32_ADDRESS 0x12 // Adres van de STM32 op de I2C-bus
#define BUFFER_SIZE 6      // Aantal waarden in het te verzenden buffer
#define READ_BUFFER_SIZE 6      // Aantal waarden in het te verzenden buffer

class MotordriverNode : public rclcpp::Node {
    public:
        MotordriverNode();
        void motor_commands_callback(const std_msgs::msg::Int64MultiArray msg);
        void encoders_callback();
        // void communicate_i2c(int left_motor, int right_motor);
        // void read_i2c();
    private:
        std::string cmd_motor_topic_;
        std::string encoder_left_topic_;
        std::string encoder_right_topic_;

        rclcpp::Subscription<std_msgs::msg::Int64MultiArray>::SharedPtr motor_commands_subscription_;
        rclcpp::Publisher<std_msgs::msg::Int32>::SharedPtr left_encoder_publisher_;
        rclcpp::Publisher<std_msgs::msg::Int32>::SharedPtr right_encoder_publisher_;

        // int i2c_file_, is_i2c_address_set_;

        rclcpp::TimerBase::SharedPtr timer_;

        I2CHandler left_i2c_bus_;

};
#endif