FROM ros:iron-ros-core

# Create a new user 'dominik'
RUN useradd -ms /bin/bash dominik

WORKDIR /home/dominik/

RUN apt update && apt install -y \
        ros-$ROS_DISTRO-demo-nodes-cpp
