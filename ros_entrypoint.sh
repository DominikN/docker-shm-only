#!/bin/bash
set -e

# setup ros2 environment
source "/opt/ros/$ROS_DISTRO/setup.bash" --

if [ -z "$USER" ]; then
    export USER=root
elif ! id "$USER" &>/dev/null; then
    useradd -ms /bin/bash "$USER"
fi
exec gosu $USER "$@"