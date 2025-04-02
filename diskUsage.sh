#!/bin/bash

# Function to check disk usage of a directory
disk_usage() {
    echo -e "\n"
    read -r -p "Enter the directory path: " dir

    # Check if the entered path is a valid directory
    if [ -d "$dir" ]; then
        echo -e "\n==== *** Disk Usage for $dir *** ====\n"
        usage=$(du -sh "$dir")
        echo "$usage"
        echo -e "\n==== *************************** ====\n"
        
        # Log the action (assuming log_action is defined elsewhere)
        log_action "Checked disk usage of $dir ($usage)"
    else
        # Print an error message if the directory does not exist
        echo " *** Error: Directory does not exist. *** "
    fi
}