#!/bin/bash

xhost +local:docker

docker run -it \
    --privileged \
    --network=host \
    --env="DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --volume="/tmp:/tmp" \
    --volume="/dev:/dev" \
    --volume="${HOME}/ros_ws/dddmr_navigation:/root/dddmr_navigation" \
    --volume="${HOME}/ros_ws/dddmr_bags:/root/dddmr_bags" \
    --name="dddmr_x64_navigation" \
    dddmr:x64
