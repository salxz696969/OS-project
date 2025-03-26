#!/bin/bash
search_file() {
    read -r -p "Enter the directory to search in: " dir
    read -r -p "Enter the file name or extension to search for: " name
    if [ -d "$dir" ]; then
        find "$dir" -name "$name"
        log_action "Searched for $name in $dir"
    else
        echo "Directory does not exist."
    fi
}