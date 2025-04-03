#!/bin/bash

# === Function to backup files or directories ===
backup_files() {
    # Prompt user for source file/directory
    echo -e "\n"
    read -r -p "Enter the file or directory to backup: " source

    # Prompt user for backup destination
    read -r -p "Enter the backup destination: " destination

    # Check if the source exists
    if [ -e "$source" ] && [ -e "$destination" ]; then
        # Perform the backup
        cp -r "$source" "$destination"
        # Log the action
        log_action "Backed up $source to $destination"
        echo -e "\n*** Backup completed successfully! ***"
    else
        # Notify user if the source does not exist
        echo -e "\n=== Error: Source or Destination does not exist. ==="
    fi
}

# === End of script ===
