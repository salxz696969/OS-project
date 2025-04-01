#!/bin/bash
count_files() {
    read -r -p "Enter the directory path: " dir
    if [ -d "$dir" ]; then
        count=$(find "$dir" -type f | wc -l)
        echo "Total files: $count"
        log_action "Counted $count files in $dir"
    else
        echo "Directory does not exist."
    fi
}