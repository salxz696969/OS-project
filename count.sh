#!/bin/bash

# Function to count the number of files in a given directory
count_files() {
     echo -e "\n==== Count Files Utility ====\n"
    read -r -p "Enter the directory path: " dir

    # Check if the entered path is a valid directory
    if [ -d "$dir" ]; then
        # Count the number of files in the directory
        count=$(find "$dir" -type f | wc -l | tr -d ' ')
        
        echo -e "\n==== ************************************* ====\n"
        echo "** Total files: $count"
        echo -e "\n==== ************************************* ====\n"

        # Log the action (assuming log_action is defined elsewhere)
        log_action "Counted $count files in $dir"
    else
        echo -e "\n**** Directory does not exist ****\n"
    fi
}