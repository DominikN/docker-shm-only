FROM ros:iron-ros-core

RUN apt update && apt install -y \
        gosu \
        ros-$ROS_DISTRO-demo-nodes-cpp

COPY ros_entrypoint.sh /

# Create a new user (set with compose.yaml -> user: ${USER_ID})
# RUN useradd -ms /bin/bash dominik
ENV USER=root