#!/bin/bash

# Function to search for a file in a specified directory
search_file() {
    # Prompt the user for the directory and file name/extension
    echo -e "\n"
    read -r -p "Enter the directory to search in: " dir
    read -r -p "Enter the file name to search for: " name

    # Check if the directory exists
    if [ -d "$dir" ]; then
        echo -e "\n==== Searching for **$name** in **$dir** ====\n"
        
        # Search for the file and check if it exists
        if find "$dir" -name "$name" | grep -q .; then
            echo "*** Found $name in $dir "
            echo -e "\n==== ************************************* ====\n"
        else
            echo "**No files matching $name found in $dir**"
        fi

        # Log the search action
        log_action "Searched for $name in $dir"
    else
        echo " **Directory does not exist.** "
    fi
}