#!/bin/bash
# Compress files or directories
compress_files() {
    echo "==== Compress Files Utility ===="
    
    read -r -p "Enter the file or directory to compress: " source
    read -r -p "Enter the name for the compressed file (without extension): " destination
    
    if [ -e "$source" ]; then
        zip -r "$destination.zip" "$source"
        log_action "Compressed $source to $destination.zip"
        echo "**** Compression Successful! ****"
    else
        echo "**** Error: Source does not exist. ****"
    fi
    
    echo "==== Operation Complete ===="
}
