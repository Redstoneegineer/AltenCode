#include <stdio.h>
#include <stdint.h>
#include <unistd.h>
#include <fcntl.h>
#include <sys/ioctl.h>
#include <linux/i2c-dev.h>

#define I2C_DEVICE "/dev/i2c-1"
#define STM32_ADDRESS 0x12 // Adres van de STM32 
#define BUFFER_SIZE 6      // Grote van de buffer

int main() {
    int i2c_fd;
    uint8_t buffer[BUFFER_SIZE] = {1, 2, 3, 4, 5, 6}; // 6 random waarden

    // Openen van de i2c bus
    if ((i2c_fd = open(I2C_DEVICE, O_RDWR)) < 0) {
        perror("Failed to open the I2C device");
        return 1;
    }

    // Instellen van het i2c adres van de STM32
    if (ioctl(i2c_fd, I2C_SLAVE, STM32_ADDRESS) < 0) {
        perror("Failed to set I2C address");
        close(i2c_fd);
        return 1;
    }

    // Verzenden van de buffer naar de STM32
    if (write(i2c_fd, buffer, BUFFER_SIZE) != BUFFER_SIZE) {
        perror("Failed to write to the I2C bus");
        close(i2c_fd);
        return 1;
    }

    printf("Data sent successfully\n");

    // Sluiten van de i2c bus
    close(i2c_fd);

    return 0;
}
