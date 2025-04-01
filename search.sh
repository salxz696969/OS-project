#!/bin/bash

log_action() {
    echo "$(date): $1" >> search.log
}

search_file() {
    read -r -p "Enter the directory to search in: " dir
    read -r -p "Enter the file name or extension to search for: " name
    if [ -d "$dir" ]; then
        if find "$dir" -name "$name" | grep -q .; then
            echo "Found $name in $dir"
            find "$dir" -name "$name"
        else
            echo "No files matching $name found in $dir"
        fi
        log_action "Searched for $name in $dir"
    else
        echo "Directory does not exist."
    fi
}