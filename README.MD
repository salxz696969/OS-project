# Shell Scripting Project

## Overview
This Shell Scripting Project is designed to automate file and directory management tasks. It provides functionalities such as listing files, creating backups, counting files, displaying disk usage, searching for files, compressing files, and maintaining a log of all user actions.

## Features

1. **List Files and Sub-directories**  
   - Displays detailed information about all files and sub-directories within a given directory.
   - Can also provide details about a specific file.

2. **Create Backups**  
   - Allows users to create backups of individual files or entire directories.
   - Prompts the user to enter the source file/directory and the destination for the backup.

3. **Count Files in a Directory**  
   - Counts the number of files within a specified directory.
   
4. **Display Disk Usage**  
   - Shows the disk space used by a specified directory.

5. **Search for Files**  
   - Allows users to search for files based on their name or extension within a given directory.

6. **Compress Files or Directories**  
   - Enables users to compress files or directories into an archive for efficient storage.
   - Supports `.zip` format for compression.

7. **Log File Management**  
   - Records all actions performed by users in a log file named `script.log`.
   - The log file is stored in the same directory where the script is executed.

## Usage
- Run the script in a terminal by go to the directory and run this script "./script.sh".
- Follow the on-screen prompts to enter required information.
- The script performs the requested operation and logs the action.

## Requirements
- A Linux-based operating system with Bash shell.
- Required utilities: `tar`, `zip`, `du`, `find`.

## Log File
All user actions are recorded in `script.log` to maintain a history of performed operations.
