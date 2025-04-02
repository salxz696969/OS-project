#!/bin/bash

# Function to list files in a given directory or file path
list_files() {
    read -r -p "Enter the directory or file path: " path

    # Check if the entered path exists
    if [ -e "$path" ]; then
        echo "==== ** Listing files in: $path ** ===="
        ls -lah "$path"  # List files with detailed information
        echo "==== ** End of file list ** ===="
        
        # Log the action (assuming log_action is defined elsewhere)
        log_action "Listed files in: $path"
    else
        # Print an error message if the path does not exist
        echo "==== ** Path does not exist. ** ===="
    fi
}