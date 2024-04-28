#include "i2c_handler.hpp"


I2CHandler::I2CHandler(std::string device_name, int device_address) : 
    device_name_(device_name),
    device_address_(device_address),
    i2c_file_(-1),
    is_address_set_(-1){}


bool I2CHandler::open_bus() {
    // Open the i2c bus if not done yet
    if (i2c_file_ < 0) {
        i2c_file_ = open(device_name_.c_str(), O_RDWR);
    }
    return i2c_file_ >= 0;
}

bool I2CHandler::set_address() {
    // Set the address of the i2c client (the motor driver hat) if not done yet
    if (is_address_set_ < 0) {
        is_address_set_ = ioctl(i2c_file_, I2C_SLAVE, device_address_);
    }
    return is_address_set_ >= 0;
}

bool I2CHandler::is_ready() {
    return open_bus() & set_address();
}

bool I2CHandler::write_motor_cmds(int buffer[WRITE_BUFFER_SIZE]) {
    uint8_t buffer_uint8[WRITE_BUFFER_SIZE];
    for (int i = 0; i < WRITE_BUFFER_SIZE; i++) {
        buffer_uint8[i] = buffer[i];
    }

    // Try to send the motor commands to the client (motor driver hat)
    return (write(i2c_file_, buffer_uint8, WRITE_BUFFER_SIZE) == WRITE_BUFFER_SIZE);
}

bool I2CHandler::read_encoder_vals(int buffer[READ_BUFFER_SIZE]) {
    uint8_t buffer_uint8[READ_BUFFER_SIZE];
    
    // Try to read encoder values from the client (motor driver hat)
    bool read_success = (read(i2c_file_, buffer_uint8, READ_BUFFER_SIZE) == READ_BUFFER_SIZE);
    if (read_success) {
        for (int i = 0; i < READ_BUFFER_SIZE; i++) {
            buffer[i] = buffer_uint8[i];
        }
    }

    return read_success;
}