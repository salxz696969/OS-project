#!/bin/bash
list_files() {
    read -r -p "Enter the directory or file path: " path
    if [ -e "$path" ]; then
        ls -lah "$path"
        log_action "Listed files in: $path"
    else
        echo "Path does not exist."
    fi
}