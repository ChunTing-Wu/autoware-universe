builtin_interfaces/Time stamp

# states
string requested_state
string current_state

# flags for engage permission
bool is_all_ok
bool engage_allowed_for_stopped_vehicle
bool trajectory_available_ok
bool lateral_deviation_ok
bool yaw_deviation_ok
bool speed_upper_deviation_ok
bool speed_lower_deviation_ok
bool stop_ok
bool large_acceleration_ok
bool large_lateral_acceleration_ok
bool large_lateral_acceleration_diff_ok

# values
float64 current_speed
float64 target_control_speed
float64 target_planning_speed
float64 target_control_acceleration
float64 lateral_acceleration
float64 lateral_acceleration_deviation
float64 lateral_deviation
float64 yaw_deviation
float64 speed_deviation
