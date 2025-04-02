#!/bin/bash

# === Function to Compress Files or Directories ===
compress_files() {
    # *** Prompt for Source and Destination ***
    read -r -p "Enter the file or directory to compress: " source
    read -r -p "Enter the name for the compressed file (without extension): " destination

    # *** Check if Source Exists ***
    if [ -e "$source" ]; then
        # Compress the source into a .tar.gz file
        tar -czvf "$destination.tar.gz" "$source"
        log_action "Compressed $source to $destination.tar.gz"
    else
        echo "Source does not exist."
    fi
}

# === End of Script ===