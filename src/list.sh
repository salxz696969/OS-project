#!/bin/bash

# Function to list files in a given directory or file path
list_files() {
    echo -e "\n"
    read -r -p "Enter the directory or file path: " path

    # Check if the entered path exists
    if [ -e "$path" ]; then
        echo -e "\n==== ** Listing files in: $path ** ====\n"
        ls -lah "$path"  # List files with detailed information
        echo -e "\n============ ** End of file list ** ============\n"
        
        # Log the action
        log_action "Listed files in: $path"
    else
        # Print an error message if the path does not exist
        echo  -e "\n==== ** Path does not exist. ** ===="
    fi
}