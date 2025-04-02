#!/bin/bash

# Function to count the number of files in a given directory
count_files() {
    read -r -p "=== ** Enter the directory path: ** === " dir

    # Check if the entered path is a valid directory
    if [ -d "$dir" ]; then
        # Count the number of files in the directory
        count=$(find "$dir" -type f | wc -l)
        
        echo "=== ** Total files: $count ** ==="
        
        # Log the action (assuming log_action is defined elsewhere)
        log_action "Counted $count files in $dir"
    else
        echo "=== ** Directory does not exist. ** ==="
    fi
}