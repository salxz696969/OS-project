#!/bin/bash
backup_files() {
    read -r -p "Enter the file or directory to backup: " source
    read -r -p "Enter the backup destination: " destination
    if [ -e "$source" ]; then
        cp -r "$source" "$destination"
        log_action "Backed up $source to $destination"
    else
        echo "Source does not exist."
    fi
}