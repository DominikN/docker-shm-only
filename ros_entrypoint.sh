#!/bin/bash
set -e

# Create a new user (set with compose.yaml -> user: ${USER_ID})
useradd -ms /bin/bash $USER

# setup ros2 environment
source "/opt/ros/$ROS_DISTRO/setup.bash" --

exec gosu $USER "$@"