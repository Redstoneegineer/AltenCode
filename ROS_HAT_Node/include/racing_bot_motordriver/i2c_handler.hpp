#include <string>
#include <stdint.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <linux/i2c-dev.h>

#ifndef I2CHANDLER_H
#define I2CHANDLER_H

#define WRITE_BUFFER_SIZE 6 // no. of bytes to send
#define READ_BUFFER_SIZE 6  // no. of bytes to read

class I2CHandler {
    public:
        I2CHandler(std::string device_name, int device_address);
        bool open_bus();
        bool set_address();
        bool write_motor_cmds(int buffer[WRITE_BUFFER_SIZE]);
        bool read_encoder_vals(int buffer[READ_BUFFER_SIZE]);
        bool is_ready();
    private:
        std::string device_name_;
        int device_address_, i2c_file_, is_address_set_;
};

#endif