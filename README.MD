
# 🖥️ Shell Scripting Project: File and Directory Management

## Overview

This project provides a set of shell scripts to help you manage files and directories efficiently. With these scripts, you can list files, create backups, count files, check disk usage, search for files, compress files, and keep a detailed log of all activities. 🗂️

## Features

### 1. 📂 **List Files and Folders**
- Displays detailed information about all files and subfolders in a specified directory.

### 2. 💾 **Create Backups**
- Backup file/directory to a location of your choice.
- Prompts you for the source file/directory and the backup destination.

### 3. 🔢 **Count Files in a Directory**
- Count the number of files in a specified directory and display the total count.

### 4. 📊 **Check Disk Usage**
- Shows how much space a folder or directory is using.

### 5. 🔍 **Search for Files**
- Search for files by name or extension in a given directory.

### 6. 📦 **Compress Files or Folders**
- Compress files or directories into a `.zip` file for easier storage.
- You can specify the name of the resulting zip file.

### 7. 📝 **Log Actions**
- Logs all actions performed by the scripts into a `script.log` file.
- Each action is recorded with a timestamp for easy tracking.

## Log File

All actions performed by the scripts are recorded in the `script.log` file located in the same directory as the scripts. This log file helps you track what was done, when it was done, and any results or errors encountered. 📜

---

## List of Scripts

### 1. **main.sh**  
- The main driver script that displays a menu to the user, allowing them to select various operations (list files, backup, count files, etc.). It calls the other scripts based on the user's choice.

### 2. **list.sh**  
- Lists all files and subdirectories in a specified directory with detailed information.

### 3. **backup.sh**  
- Prompts the user for a source file or directory and a destination to back it up to.
- Copies the specified file or directory to the chosen location.

### 4. **count.sh**  
- Counts the number of files in a specified directory.
- Outputs the total number of files present in the directory.

### 5. **diskUsage.sh**  
- Checks and displays the disk usage of a specified directory.

### 6. **search.sh**  
- Searches for files by name in a specified directory.
- Helps users find files quickly and easily.

### 7. **compress.sh**  
- Compresses files or directories into a `.zip` file for easier storage.
- The user can specify the name of the resulting `.zip` file.

### 8. **log.sh**  
- Logs the actions performed by the other scripts to a `script.log` file.
- Takes a log message as input and writes it to the log file.

---

## Demo Folder Structure

The project includes several helper folders and files for testing and demonstration purposes:

- **`/test`**  
   - This folder contains a variety of files (e.g., PDFs, MP4s, PNGs) that can be used for testing script functionalities. You can perform operations like listing files, backing them up, counting them, etc., using the files in this directory.

- **`script.log`**  
   - The `script.log` file records all actions performed by the scripts. This log includes timestamps and descriptions of each action, such as backups created, files listed, and searches performed.

- **`/backup`**  
   - An empty folder where backups can be stored. You can use this folder as a destination for backups created by the `backup.sh` script.

---

## How to Use

1. Clone the project.
   ```bash
   git clone https://github.com/salxz696969/OS-project.git
   ```
2. Navigate to the script’s directory:
   ```bash
   cd OS-project
   ```
3. Grant permission to all scripts:
   ```bash
   chmod +x *.sh
   ```

3. Run the main driver script:
   ```bash
   ./main.sh
   ```
4. Follow the on-screen instructions to execute various tasks (e.g., list files, create backups, etc.).
5. Each action is automatically logged in the `script.log` file.

## Conclusion

This Shell Scripting Project provides a range of useful tools to manage and organize your files and directories. The scripts are simple to use and automate common tasks like listing files, creating backups, counting files, and more. Additionally, every action is logged in a `script.log` file, making it easy to track and review your actions. 📝✨
