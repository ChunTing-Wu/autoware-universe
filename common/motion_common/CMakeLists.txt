cmake_minimum_required(VERSION 3.14)
project(motion_common)

find_package(autoware_cmake REQUIRED)
autoware_package()

find_package(Eigen3 REQUIRED)

include_directories(
  SYSTEM
    ${EIGEN3_INCLUDE_DIR}
)

ament_auto_add_library(${PROJECT_NAME} SHARED
  src/motion_common/config.cpp
  src/motion_common/motion_common.cpp
  src/motion_common/trajectory_common.cpp
)

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  ament_lint_auto_find_test_dependencies()

  # Unit test
  #apex_test_tools_add_gtest(motion_common_unit_tests
  #  test/sanity_checks.cpp
  #  test/interpolation.cpp
  #  test/trajectory.cpp)
  #target_compile_options(motion_common_unit_tests PRIVATE -Wno-float-conversion)
  #target_link_libraries(motion_common_unit_tests ${PROJECT_NAME})
  #add_dependencies(motion_common_unit_tests ${PROJECT_NAME})
  #ament_target_dependencies(motion_common_unit_tests
  #  "geometry_msgs"
  #  "autoware_auto_geometry_msgs"
  #)
endif()

# Install snippets for code generation
install(DIRECTORY scripts/autogeneration_code_snippets DESTINATION share/)

ament_auto_package()
