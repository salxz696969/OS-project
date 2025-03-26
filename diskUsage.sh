#!/bin/bash
disk_usage() {
    read -r -p "Enter the directory path: " dir
    if [ -d "$dir" ]; then
        du -sh "$dir"
        log_action "Checked disk usage of $dir"
    else
        echo "Directory does not exist."
    fi
}