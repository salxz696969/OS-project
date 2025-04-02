#!/bin/bash

# Function to log actions with a timestamp
log_action() {
    echo "$(date): $1" >> search.log
}

# Function to search for a file in a specified directory
search_file() {
    # Prompt the user for the directory and file name/extension
    read -r -p "Enter the directory to search in: " dir
    read -r -p "Enter the file name or extension to search for: " name

    # Check if the directory exists
    if [ -d "$dir" ]; then
        echo "==== Searching for **$name** in **$dir** ===="
        
        # Search for the file and check if it exists
        if find "$dir" -name "$name" | grep -q .; then
            echo "==== **Found $name in $dir** ===="
            find "$dir" -name "$name"
        else
            echo "==== **No files matching $name found in $dir** ===="
        fi

        # Log the search action
        log_action "Searched for $name in $dir"
    else
        echo "==== **Directory does not exist.** ===="
    fi
}