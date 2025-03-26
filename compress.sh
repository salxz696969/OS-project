#!/bin/bash
compress_files() {
    read -r -p "Enter the file or directory to compress: " source
    read -r -p "Enter the name for the compressed file (without extension): " destination
    if [ -e "$source" ]; then
        tar -czvf "$destination.tar.gz" "$source"
        log_action "Compressed $source to $destination.tar.gz"
    else
        echo "Source does not exist."
    fi
}