#!/bin/bash

# Function to check disk usage of a directory
disk_usage() {
    read -r -p "Enter the directory path: " dir

    # Check if the entered path is a valid directory
    if [ -d "$dir" ]; then
        echo "==== *** Disk Usage for $dir *** ===="
        du -sh "$dir"  # Display the disk usage in human-readable format
        echo "==== *************************** ===="
        
        # Log the action (assuming log_action is defined elsewhere)
        log_action "Checked disk usage of $dir"
    else
        # Print an error message if the directory does not exist
        echo "==== *** Error: Directory does not exist. *** ===="
    fi
}