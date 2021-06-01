#!/bin/bash

# Terminate already running bar instances
killall -q slstatus

# Wait until the processes have been shut down
while pgrep -u $UID -x slstatus >/dev/null; do sleep 1; done

# Launch pipewire
slstatus &
