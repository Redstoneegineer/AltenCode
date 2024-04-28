cmake_minimum_required(VERSION 3.8)
project(racing_bot_motordriver)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(rclcpp REQUIRED)
find_package(std_msgs REQUIRED)
# find_package(stdio REQUIRED)
# find_package(stdint REQUIRED)
# find_package(unistd REQUIRED)
# find_package(fcntl REQUIRED)
# find_package(sys REQUIRED)
# find_package(i2c-dev REQUIRED)

include_directories(include/racing_bot_motordriver /usr/include)

add_executable(motordriver_node src/motordriver_node.cpp src/i2c_handler.cpp)

ament_target_dependencies(motordriver_node rclcpp std_msgs)

install(
  TARGETS
  motordriver_node
  DESTINATION lib/${PROJECT_NAME}
)


ament_package()
