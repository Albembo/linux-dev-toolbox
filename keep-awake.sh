#!/bin/bash

# Set seconds of wait between one movement and another
WAIT=60

echo "Keep-awake activated 🕵️‍♂️. Press Ctrl+C to stop it."

while true; do
    # Moves the mouse 1 pixel right and down
    xdotool mousemove_relative 1 1

    # Wait a moment
    sleep 0.1

    # Move the mouse back to the starting point
    xdotool mousemove_relative -- -1 -1

    # Wait before repeating the cycle
    sleep $WAIT
done