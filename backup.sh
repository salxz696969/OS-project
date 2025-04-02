#!/bin/bash

# === Function to backup files or directories ===
backup_files() {
    # Prompt user for source file/directory
    read -r -p "Enter the file or directory to backup: " source

    # Prompt user for backup destination
    read -r -p "Enter the backup destination: " destination

    # Check if the source exists
    if [ -e "$source" ]; then
        # Perform the backup
        cp -r "$source" "$destination"
        # Log the action (assuming log_action is defined elsewhere)
        log_action "Backed up $source to $destination"
        echo "*** Backup completed successfully! ***"
    else
        # Notify user if the source does not exist
        echo "=== Error: Source does not exist. ==="
    fi
}

# === End of script ===