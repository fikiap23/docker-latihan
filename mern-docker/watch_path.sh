#!/bin/bash

# Path to watch on Windows
WATCH_PATH="D:/docker-project/docker_js_master/mern-docker/backend"

# Path to save the converted path
WSL_WATCH_PATH="/mnt/d/docker-project/docker_js_master/mern-docker/backend"

while true; do
    # Convert Windows path to WSL path and save it to a file
    wslpath -aw "$WATCH_PATH" > /tmp/watch_path
    sleep 1
done
