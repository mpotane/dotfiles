#!/bin/bash

# Terminate already running bar instances
killall -q pipewire

# Wait until the processes have been shut down
while pgrep -u $UID -x pipewire >/dev/null; do sleep 1; done

# Launch pipewire
pipewire &

