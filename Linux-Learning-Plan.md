# Linux Learning Plan for DevOps

## Table of Contents
1. [Introduction](#introduction)
2. [Learning Path Overview](#learning-path-overview)
3. [Prerequisites](#prerequisites)
4. [Phase 1: Computer Fundamentals](#phase-1-computer-fundamentals)
5. [Phase 2: Linux Basics](#phase-2-linux-basics)
6. [Phase 3: File System & Navigation](#phase-3-file-system--navigation)
7. [Phase 4: Text Processing & Editors](#phase-4-text-processing--editors)
8. [Phase 5: Permissions & Security](#phase-5-permissions--security)
9. [Phase 6: Process Management](#phase-6-process-management)
10. [Phase 7: Networking Basics](#phase-7-networking-basics)
11. [Phase 8: Shell Scripting](#phase-8-shell-scripting)
12. [Phase 9: System Administration](#phase-9-system-administration)
13. [Phase 10: DevOps Foundations](#phase-10-devops-foundations)
14. [Practice Projects](#practice-projects)
15. [Next Steps](#next-steps)

## Introduction

This comprehensive guide will take you from zero knowledge to Linux proficiency with a focus on DevOps skills. The plan is structured in phases, each building upon the previous one.

**Estimated Time:** 8-12 weeks (2-3 hours daily)

## Learning Path Overview

```
Computer Fundamentals → Linux Basics → File System → Text Processing → 
Permissions → Process Management → Networking → Shell Scripting → 
System Administration → DevOps Foundations
```

## Prerequisites

- A computer (Windows, Mac, or Linux)
- Internet connection
- Willingness to practice hands-on
- Basic typing skills

---

## Phase 1: Computer Fundamentals
**Duration:** 3-4 days

### What You'll Learn
- How computers work
- Operating systems basics
- Hardware components
- Software vs Hardware

### Key Concepts

#### 1.1 Computer Components
- **CPU (Central Processing Unit):** The brain of the computer
- **RAM (Random Access Memory):** Temporary storage for running programs
- **Storage (Hard Drive/SSD):** Permanent storage for files and programs
- **Input/Output devices:** Keyboard, mouse, monitor, etc.

#### 1.2 Operating Systems
- **What is an OS?** Software that manages computer hardware and software
- **Types of OS:** Windows, macOS, Linux
- **Why Linux?** Free, open-source, powerful, widely used in servers

#### 1.3 File Systems
- **Files:** Collections of data stored on disk
- **Folders/Directories:** Containers for organizing files
- **Path:** Location of a file or folder

### Practical Exercise
1. Identify components of your current computer
2. Explore file system on your current OS
3. Create folders and files to understand organization

---

## Phase 2: Linux Basics
**Duration:** 5-7 days

### What You'll Learn
- Linux history and philosophy
- Linux distributions
- Installing Linux
- Desktop environment basics

### Key Concepts

#### 2.1 Linux History
- Created by Linus Torvalds in 1991
- Based on Unix operating system
- Open-source and free
- Powers most servers and cloud infrastructure

#### 2.2 Linux Distributions
- **Ubuntu:** Beginner-friendly, great for learning
- **CentOS/RHEL:** Enterprise-focused
- **Debian:** Stable and reliable
- **Fedora:** Cutting-edge features

#### 2.3 Getting Started with Linux
**Option 1: Virtual Machine (Recommended for beginners)**
- Download VirtualBox or VMware
- Download Ubuntu Desktop ISO
- Install Ubuntu in virtual machine

**Option 2: Dual Boot**
- Partition hard drive
- Install Linux alongside current OS

**Option 3: Cloud Instance**
- Use AWS EC2, Google Cloud, or DigitalOcean
- Access via SSH

#### 2.4 Desktop Environment
- **GNOME:** Default Ubuntu desktop
- **Taskbar/Panel:** Application launcher and system info
- **Applications menu:** Access to installed programs
- **Terminal:** Command-line interface (most important!)

### Practical Exercises
1. Install Ubuntu in VirtualBox
2. Explore desktop environment
3. Open terminal application
4. Take screenshot of your Linux desktop

---

## Phase 3: File System & Navigation
**Duration:** 7-10 days

### What You'll Learn
- Linux file system hierarchy
- Command-line navigation
- Basic file operations
- Understanding paths

### Key Concepts

#### 3.1 Linux File System Hierarchy
```
/                    (Root directory - top level)
├── bin/            (Essential user binaries)
├── boot/           (Boot loader files)
├── dev/            (Device files)
├── etc/            (System configuration files)
├── home/           (User home directories)
│   └── username/   (Your personal folder)
├── lib/            (Essential shared libraries)
├── media/          (Removable media mount points)
├── mnt/            (Temporary mount points)
├── opt/            (Optional software packages)
├── proc/           (Process information)
├── root/           (Root user's home directory)
├── sbin/           (System binaries)
├── tmp/            (Temporary files)
├── usr/            (User programs and data)
└── var/            (Variable data files)
```

#### 3.2 Essential Navigation Commands

**pwd (Print Working Directory)**
```bash
pwd
# Shows current directory location
```

**ls (List)**
```bash
ls                  # List files in current directory
ls -l              # Long format (detailed info)
ls -la             # Include hidden files
ls -lh             # Human readable sizes
ls /home           # List contents of /home directory
```

**cd (Change Directory)**
```bash
cd /home           # Go to /home directory
cd ~               # Go to your home directory
cd ..              # Go up one directory
cd -               # Go to previous directory
cd                 # Go to home directory (same as cd ~)
```

#### 3.3 Understanding Paths
**Absolute Path:** Starts from root (/)
```bash
/home/username/Documents/file.txt
```

**Relative Path:** Starts from current location
```bash
Documents/file.txt
../Pictures/image.jpg
```

**Special Directories:**
- `.` (current directory)
- `..` (parent directory)
- `~` (home directory)
- `/` (root directory)

#### 3.4 File Operations

**Creating Files and Directories**
```bash
touch filename.txt          # Create empty file
mkdir directory_name        # Create directory
mkdir -p path/to/new/dir   # Create nested directories
```

**Copying and Moving**
```bash
cp file.txt backup.txt         # Copy file
cp -r directory/ backup/       # Copy directory recursively
mv old_name.txt new_name.txt   # Rename/move file
mv file.txt /home/user/        # Move file to directory
```

**Removing Files and Directories**
```bash
rm filename.txt            # Remove file
rm -r directory_name       # Remove directory and contents
rm -rf directory_name      # Force remove (be careful!)
rmdir empty_directory      # Remove empty directory
```

**Viewing File Contents**
```bash
cat filename.txt           # Display entire file
less filename.txt          # View file page by page (q to quit)
head filename.txt          # Show first 10 lines
tail filename.txt          # Show last 10 lines
tail -f logfile.txt        # Follow file (useful for logs)
```

### Practical Exercises

**Exercise 1: Navigation Practice**
```bash
# Start in home directory
cd ~
pwd

# Create directory structure
mkdir -p practice/linux/basics
mkdir -p practice/scripts
mkdir -p practice/configs

# Navigate around
cd practice
ls -la
cd linux/basics
pwd
cd ../../scripts
pwd
cd ..
```

**Exercise 2: File Operations**
```bash
# Create files
cd ~/practice
touch file1.txt file2.txt file3.txt
echo "Hello Linux!" > greeting.txt
echo "Learning is fun" > learning.txt

# List and examine
ls -la
cat greeting.txt

# Copy and move
cp greeting.txt backup_greeting.txt
mv learning.txt linux/
ls
ls linux/

# Practice paths
cat ./linux/learning.txt
cat ~/practice/backup_greeting.txt
```

**Exercise 3: File System Exploration**
```bash
# Explore system directories
ls /
ls /home
ls /etc
ls /usr/bin | head -20
ls /var/log
```

---

## Phase 4: Text Processing & Editors
**Duration:** 7-10 days

### What You'll Learn
- Text editors (nano, vim)
- Text processing commands
- Search and filter techniques
- Regular expressions basics

### Key Concepts

#### 4.1 Text Editors

**Nano (Beginner-friendly)**
```bash
nano filename.txt
```
- Ctrl+X to exit
- Ctrl+O to save
- Ctrl+W to search

**Vim (Powerful but complex)**
```bash
vim filename.txt
```
Basic vim commands:
- `i` to enter insert mode
- `Esc` to exit insert mode
- `:w` to save
- `:q` to quit
- `:wq` to save and quit
- `:q!` to quit without saving

#### 4.2 Text Processing Commands

**grep (Search text)**
```bash
grep "pattern" filename.txt
grep -i "pattern" filename.txt    # Case insensitive
grep -n "pattern" filename.txt    # Show line numbers
grep -r "pattern" directory/      # Search in all files
```

**sort and uniq**
```bash
sort filename.txt              # Sort lines alphabetically
sort -n numbers.txt            # Sort numerically
sort filename.txt | uniq       # Remove duplicates
```

**cut (Extract columns)**
```bash
cut -d',' -f1 data.csv         # Extract first column (comma-separated)
cut -c1-10 filename.txt        # Extract characters 1-10
```

**wc (Word count)**
```bash
wc filename.txt                # Lines, words, characters
wc -l filename.txt             # Count lines only
wc -w filename.txt             # Count words only
```

**sed (Stream editor)**
```bash
sed 's/old/new/' filename.txt         # Replace first occurrence
sed 's/old/new/g' filename.txt        # Replace all occurrences
sed 's/old/new/g' file.txt > new.txt  # Save to new file
```

#### 4.3 Pipes and Redirection

**Pipes (|)** - Connect commands
```bash
cat filename.txt | grep "pattern"
ls -la | grep "txt"
cat /etc/passwd | head -5
```

**Redirection**
```bash
command > file.txt             # Redirect output to file (overwrite)
command >> file.txt            # Redirect output to file (append)
command < input.txt            # Use file as input
command 2> error.txt           # Redirect errors to file
```

### Practical Exercises

**Exercise 1: Editor Practice**
```bash
# Create a file with nano
nano myfile.txt
# Type some content, save with Ctrl+O, exit with Ctrl+X

# Edit the same file with vim
vim myfile.txt
# Press 'i' to insert, add more content, press Esc, type :wq
```

**Exercise 2: Text Processing**
```bash
# Create sample data
echo -e "apple\nbanana\napple\ncherry\nbanana" > fruits.txt
echo -e "1\n3\n2\n5\n4" > numbers.txt

# Process the data
cat fruits.txt
sort fruits.txt
sort fruits.txt | uniq
wc -l fruits.txt

# Search examples
grep "apple" fruits.txt
grep -n "a" fruits.txt
```

**Exercise 3: Pipes and Redirection**
```bash
# Create system information file
date > system_info.txt
whoami >> system_info.txt
pwd >> system_info.txt
ls -la ~ | head -5 >> system_info.txt

# View result
cat system_info.txt
```

---

## Phase 5: Permissions & Security
**Duration:** 5-7 days

### What You'll Learn
- File permissions system
- User and group management
- Changing permissions
- Security basics

### Key Concepts

#### 5.1 Understanding Permissions

**Permission Types:**
- **r (read):** View file contents or list directory
- **w (write):** Modify file or create/delete files in directory
- **x (execute):** Run file as program or enter directory

**User Categories:**
- **Owner:** User who owns the file
- **Group:** Group that owns the file
- **Others:** Everyone else

**Permission Display:**
```bash
ls -la filename.txt
-rw-r--r-- 1 user group 1024 Jan 15 10:30 filename.txt
```

Breakdown:
```
-rw-r--r--
│││ │ │ │
│││ │ │ └── Others permissions (r--)
│││ │ └──── Group permissions (r--)
│││ └────── Owner permissions (rw-)
││└──────── File type (- = regular file, d = directory)
```

#### 5.2 Numeric Permissions

**Binary to Decimal:**
- r = 4
- w = 2  
- x = 1

**Common Permission Combinations:**
- 755 = rwxr-xr-x (owner: all, group/others: read+execute)
- 644 = rw-r--r-- (owner: read+write, group/others: read only)
- 600 = rw------- (owner: read+write, group/others: no access)
- 777 = rwxrwxrwx (everyone: all permissions - rarely recommended)

#### 5.3 Changing Permissions

**chmod (Change Mode)**
```bash
chmod 755 filename.txt         # Set specific permissions
chmod +x script.sh             # Add execute permission
chmod -w filename.txt          # Remove write permission
chmod u+x,g-w,o-r filename.txt # Complex changes
chmod -R 755 directory/        # Recursive (all files in directory)
```

**chown (Change Owner)**
```bash
sudo chown user:group filename.txt     # Change owner and group
sudo chown user filename.txt           # Change owner only
sudo chown :group filename.txt         # Change group only
sudo chown -R user:group directory/    # Recursive
```

#### 5.4 User Management

**User Information**
```bash
whoami                         # Current username
id                            # User and group IDs
groups                        # Groups you belong to
cat /etc/passwd | grep username # User account info
```

**sudo (Superuser Do)**
```bash
sudo command                   # Run command as root
sudo -u username command       # Run command as specific user
sudo su -                     # Switch to root user
```

### Practical Exercises

**Exercise 1: Exploring Permissions**
```bash
# Create test files
touch test_file.txt
mkdir test_directory
echo "#!/bin/bash\necho 'Hello World'" > script.sh

# Check permissions
ls -la test_file.txt
ls -la test_directory
ls -la script.sh

# Try to execute script
./script.sh  # Should fail - no execute permission
```

**Exercise 2: Changing Permissions**
```bash
# Make script executable
chmod +x script.sh
ls -la script.sh
./script.sh  # Should work now

# Practice with different permissions
chmod 644 test_file.txt
chmod 755 test_directory
ls -la

# Try numeric permissions
chmod 600 test_file.txt
chmod 755 script.sh
ls -la
```

**Exercise 3: Understanding sudo**
```bash
# Try to view system file
cat /etc/shadow              # Should fail
sudo cat /etc/shadow         # Should work (if you have sudo access)

# Check your permissions
id
groups
sudo -l                      # List what you can do with sudo
```

---

## Phase 6: Process Management
**Duration:** 5-7 days

### What You'll Learn
- Understanding processes
- Monitoring running processes
- Controlling processes
- Background and foreground jobs

### Key Concepts

#### 6.1 Understanding Processes

**What is a Process?**
- Running instance of a program
- Has Process ID (PID)
- Uses system resources (CPU, memory)
- Can be parent or child process

**Process States:**
- **Running:** Currently executing
- **Sleeping:** Waiting for resources
- **Stopped:** Suspended
- **Zombie:** Finished but not cleaned up

#### 6.2 Viewing Processes

**ps (Process Status)**
```bash
ps                             # Show your processes
ps aux                         # Show all processes (detailed)
ps -ef                         # Show all processes (different format)
ps aux | grep firefox          # Find specific process
```

**top (Real-time Process Viewer)**
```bash
top                            # Interactive process monitor
# Press 'q' to quit
# Press 'M' to sort by memory
# Press 'P' to sort by CPU
```

**htop (Enhanced Process Viewer)**
```bash
htop                           # Better version of top (if installed)
sudo apt install htop         # Install on Ubuntu
```

#### 6.3 Process Control

**Killing Processes**
```bash
kill PID                       # Terminate process gracefully
kill -9 PID                    # Force kill process
killall process_name           # Kill all processes with name
pkill pattern                  # Kill processes matching pattern
```

**Job Control**
```bash
command &                      # Run in background
jobs                          # List background jobs
fg %1                         # Bring job 1 to foreground
bg %1                         # Send job 1 to background
Ctrl+Z                        # Suspend current process
Ctrl+C                        # Interrupt current process
```

**nohup (No Hangup)**
```bash
nohup long_running_command &   # Keep running after logout
```

#### 6.4 System Monitoring

**System Resource Usage**
```bash
free -h                        # Memory usage
df -h                         # Disk usage
du -h directory/              # Directory size
uptime                        # System uptime and load
who                           # Who is logged in
w                             # Who is doing what
```

### Practical Exercises

**Exercise 1: Process Exploration**
```bash
# View processes
ps
ps aux | head -10
ps aux | grep bash

# Find your shell process
ps aux | grep $$              # $$ is current shell PID
echo $$                       # Show current shell PID
```

**Exercise 2: Job Control**
```bash
# Start a long-running process
sleep 100 &                   # Run sleep in background
jobs                          # List background jobs
ps                           # See the sleep process

# Practice control
sleep 200                     # Start in foreground
# Press Ctrl+Z to suspend
bg                           # Move to background
jobs
fg                           # Bring back to foreground
# Press Ctrl+C to interrupt
```

**Exercise 3: System Monitoring**
```bash
# Check system resources
free -h
df -h
uptime
who

# Monitor in real-time
top
# Press 'q' to quit

# Check specific directory size
du -h ~/practice
```

---

## Phase 7: Networking Basics
**Duration:** 5-7 days

### What You'll Learn
- Network fundamentals
- Network configuration
- Network troubleshooting tools
- Remote access basics

### Key Concepts

#### 7.1 Network Fundamentals

**IP Addresses:**
- **IPv4:** 192.168.1.100 (4 numbers, 0-255)
- **Localhost:** 127.0.0.1 (your own machine)
- **Private ranges:** 192.168.x.x, 10.x.x.x, 172.16-31.x.x

**Ports:**
- Communication endpoints
- **SSH:** 22
- **HTTP:** 80
- **HTTPS:** 443
- **FTP:** 21

**Protocols:**
- **TCP:** Reliable, connection-based
- **UDP:** Fast, connectionless
- **HTTP/HTTPS:** Web traffic
- **SSH:** Secure remote access

#### 7.2 Network Configuration

**View Network Information**
```bash
ip addr show                   # Show IP addresses
ip route show                  # Show routing table
hostname                       # Show computer name
hostname -I                    # Show IP address
```

**Traditional Commands (still useful)**
```bash
ifconfig                       # Network interface config
netstat -tuln                  # Show listening ports
netstat -rn                    # Show routing table
```

#### 7.3 Network Troubleshooting

**ping (Test Connectivity)**
```bash
ping google.com                # Test internet connectivity
ping -c 4 192.168.1.1         # Ping 4 times
ping localhost                 # Test local network
```

**wget and curl (Download/Test Web)**
```bash
wget https://example.com       # Download webpage
curl https://example.com       # Display webpage
curl -I https://example.com    # Show headers only
```

**nslookup and dig (DNS Lookup)**
```bash
nslookup google.com           # Look up IP address
dig google.com                # Detailed DNS info
```

#### 7.4 Remote Access

**SSH (Secure Shell)**
```bash
ssh username@hostname         # Connect to remote machine
ssh username@192.168.1.100   # Connect using IP address
ssh -p 2222 user@host        # Connect on different port
```

**SCP (Secure Copy)**
```bash
scp file.txt user@host:/path/    # Copy file to remote
scp user@host:/path/file.txt .   # Copy file from remote
scp -r directory user@host:/     # Copy directory
```

### Practical Exercises

**Exercise 1: Network Information**
```bash
# Check your network configuration
ip addr show
hostname
hostname -I

# If ifconfig is available
ifconfig

# Check routing
ip route show
```

**Exercise 2: Connectivity Testing**
```bash
# Test internet connectivity
ping -c 4 google.com
ping -c 4 8.8.8.8            # Google DNS

# Test local connectivity
ping -c 4 localhost
ping -c 4 127.0.0.1
```

**Exercise 3: Web Requests**
```bash
# Download a webpage
curl https://httpbin.org/ip    # Show your public IP
curl -I https://google.com     # Show headers

# DNS lookup
nslookup google.com
```

---

## Phase 8: Shell Scripting
**Duration:** 10-14 days

### What You'll Learn
- Bash scripting basics
- Variables and user input
- Control structures (if, loops)
- Functions and error handling

### Key Concepts

#### 8.1 Script Basics

**Creating a Script**
```bash
#!/bin/bash
# This is a comment
echo "Hello, World!"
```

**Making Script Executable**
```bash
chmod +x script.sh
./script.sh
```

**Running Scripts**
```bash
bash script.sh               # Run with bash
./script.sh                  # Run directly (needs execute permission)
sh script.sh                 # Run with sh
```

#### 8.2 Variables

**Basic Variables**
```bash
#!/bin/bash
name="John"
age=25
echo "Name: $name"
echo "Age: $age"
echo "Name: ${name}"         # Preferred syntax
```

**Command Substitution**
```bash
current_date=$(date)
user=$(whoami)
files=$(ls | wc -l)
echo "Today is $current_date"
echo "Current user: $user"
echo "Files in directory: $files"
```

**Environment Variables**
```bash
echo $HOME                   # Home directory
echo $PATH                   # Executable search path
echo $USER                   # Current username
echo $PWD                    # Current directory
```

#### 8.3 User Input

**Reading Input**
```bash
#!/bin/bash
echo "What's your name?"
read name
echo "Hello, $name!"

# Read with prompt
read -p "Enter your age: " age
echo "You are $age years old"
```

**Command Line Arguments**
```bash
#!/bin/bash
echo "Script name: $0"
echo "First argument: $1"
echo "Second argument: $2"
echo "All arguments: $@"
echo "Number of arguments: $#"
```

#### 8.4 Control Structures

**If Statements**
```bash
#!/bin/bash
read -p "Enter a number: " number

if [ $number -gt 10 ]; then
    echo "Number is greater than 10"
elif [ $number -eq 10 ]; then
    echo "Number is exactly 10"
else
    echo "Number is less than 10"
fi
```

**For Loops**
```bash
#!/bin/bash
# Loop through numbers
for i in 1 2 3 4 5; do
    echo "Number: $i"
done

# Loop through files
for file in *.txt; do
    echo "Processing $file"
done

# C-style loop
for ((i=1; i<=5; i++)); do
    echo "Count: $i"
done
```

**While Loops**
```bash
#!/bin/bash
counter=1
while [ $counter -le 5 ]; do
    echo "Counter: $counter"
    counter=$((counter + 1))
done
```

#### 8.5 Functions

**Basic Functions**
```bash
#!/bin/bash
greet() {
    echo "Hello, $1!"
}

calculate_sum() {
    local num1=$1
    local num2=$2
    echo $((num1 + num2))
}

# Call functions
greet "Alice"
result=$(calculate_sum 5 3)
echo "Sum: $result"
```

#### 8.6 Error Handling

**Exit Codes**
```bash
#!/bin/bash
command_that_might_fail
if [ $? -eq 0 ]; then
    echo "Command succeeded"
else
    echo "Command failed"
    exit 1
fi
```

**Set Options**
```bash
#!/bin/bash
set -e    # Exit on any error
set -u    # Exit on undefined variable
set -x    # Print commands before executing
```

### Practical Exercises

**Exercise 1: First Script**
```bash
# Create hello.sh
nano hello.sh
```
```bash
#!/bin/bash
echo "Hello, Linux World!"
echo "Today is $(date)"
echo "Current user: $(whoami)"
echo "Current directory: $(pwd)"
```
```bash
chmod +x hello.sh
./hello.sh
```

**Exercise 2: Interactive Script**
```bash
# Create info_collector.sh
nano info_collector.sh
```
```bash
#!/bin/bash
echo "System Information Collector"
echo "============================"

read -p "Enter your name: " username
read -p "Enter your favorite color: " color

echo
echo "Hello $username!"
echo "Your favorite color is $color"
echo "System info:"
echo "- Hostname: $(hostname)"
echo "- Date: $(date)"
echo "- Uptime: $(uptime)"
echo "- Disk usage:"
df -h /
```
```bash
chmod +x info_collector.sh
./info_collector.sh
```

**Exercise 3: File Processing Script**
```bash
# Create file_processor.sh
nano file_processor.sh
```
```bash
#!/bin/bash
if [ $# -eq 0 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

directory=$1

if [ ! -d "$directory" ]; then
    echo "Error: $directory is not a directory"
    exit 1
fi

echo "Processing files in $directory"
echo "==============================="

file_count=0
for file in "$directory"/*; do
    if [ -f "$file" ]; then
        echo "File: $(basename "$file") - Size: $(stat -c%s "$file") bytes"
        file_count=$((file_count + 1))
    fi
done

echo "==============================="
echo "Total files processed: $file_count"
```
```bash
chmod +x file_processor.sh
./file_processor.sh ~/practice
```

---

## Phase 9: System Administration
**Duration:** 10-14 days

### What You'll Learn
- Package management
- Service management
- Log file analysis
- Cron jobs and automation
- System monitoring

### Key Concepts

#### 9.1 Package Management

**Ubuntu/Debian (APT)**
```bash
sudo apt update                    # Update package list
sudo apt upgrade                   # Upgrade all packages
sudo apt install package_name     # Install package
sudo apt remove package_name      # Remove package
sudo apt search keyword           # Search for packages
apt list --installed             # List installed packages
```

**CentOS/RHEL (YUM/DNF)**
```bash
sudo yum update                   # Update packages
sudo yum install package_name     # Install package
sudo yum remove package_name      # Remove package
sudo yum search keyword          # Search packages
```

#### 9.2 Service Management (systemd)

**Service Control**
```bash
sudo systemctl start service_name     # Start service
sudo systemctl stop service_name      # Stop service
sudo systemctl restart service_name   # Restart service
sudo systemctl reload service_name    # Reload configuration
sudo systemctl enable service_name    # Enable at boot
sudo systemctl disable service_name   # Disable at boot
```

**Service Status**
```bash
systemctl status service_name         # Check service status
systemctl is-active service_name      # Check if running
systemctl is-enabled service_name     # Check if enabled
systemctl list-units --type=service   # List all services
```

#### 9.3 Log File Analysis

**System Logs**
```bash
# Journal logs (systemd)
journalctl                            # View all logs
journalctl -u service_name            # Logs for specific service
journalctl -f                         # Follow logs (like tail -f)
journalctl --since "1 hour ago"       # Recent logs
journalctl --since today              # Today's logs

# Traditional log files
tail -f /var/log/syslog               # System messages
tail -f /var/log/auth.log             # Authentication logs
tail -f /var/log/apache2/access.log   # Web server logs
```

**Log Analysis**
```bash
grep "ERROR" /var/log/syslog          # Find errors
grep "Failed password" /var/log/auth.log  # Failed login attempts
awk '{print $1}' /var/log/apache2/access.log | sort | uniq -c  # IP frequency
```

#### 9.4 Cron Jobs (Scheduled Tasks)

**Crontab Format**
```
* * * * * command
│ │ │ │ │
│ │ │ │ └── Day of week (0-7, 0 and 7 are Sunday)
│ │ │ └──── Month (1-12)
│ │ └────── Day of month (1-31)
│ └──────── Hour (0-23)
└────────── Minute (0-59)
```

**Crontab Commands**
```bash
crontab -l                            # List cron jobs
crontab -e                            # Edit cron jobs
crontab -r                            # Remove all cron jobs
```

**Example Cron Jobs**
```bash
# Run every minute
* * * * * /path/to/script.sh

# Run at 2:30 AM daily
30 2 * * * /path/to/backup.sh

# Run every Sunday at midnight
0 0 * * 0 /path/to/weekly_task.sh

# Run every 5 minutes
*/5 * * * * /path/to/monitor.sh
```

#### 9.5 System Monitoring

**Resource Monitoring**
```bash
# CPU and Memory
top                                   # Real-time process viewer
htop                                  # Enhanced process viewer
ps aux --sort=-%cpu | head           # Top CPU processes
ps aux --sort=-%mem | head           # Top memory processes

# Memory
free -h                              # Memory usage
cat /proc/meminfo                    # Detailed memory info

# Disk
df -h                                # Disk space usage
du -sh /path/to/directory           # Directory size
iostat                              # I/O statistics

# Network
netstat -tuln                       # Listening ports
ss -tuln                            # Modern alternative to netstat
iftop                               # Network traffic monitor
```

### Practical Exercises

**Exercise 1: Package Management**
```bash
# Update system
sudo apt update

# Install useful tools
sudo apt install tree htop curl wget

# Search for packages
apt search text-editor

# List installed packages
apt list --installed | grep vim
```

**Exercise 2: Service Management**
```bash
# Check SSH service
systemctl status ssh

# List all services
systemctl list-units --type=service | head -20

# Check if service is enabled
systemctl is-enabled ssh
```

**Exercise 3: Log Analysis**
```bash
# View recent system logs
journalctl --since "10 minutes ago"

# Check for errors
sudo journalctl -p err

# Monitor logs in real-time
sudo journalctl -f
# Press Ctrl+C to stop
```

**Exercise 4: Create a Monitoring Script**
```bash
# Create system_monitor.sh
nano system_monitor.sh
```
```bash
#!/bin/bash
echo "System Monitor Report - $(date)"
echo "================================"
echo
echo "Uptime:"
uptime
echo
echo "Memory Usage:"
free -h
echo
echo "Disk Usage:"
df -h / /home 2>/dev/null
echo
echo "Top 5 CPU Processes:"
ps aux --sort=-%cpu | head -6
echo
echo "Top 5 Memory Processes:"
ps aux --sort=-%mem | head -6
```
```bash
chmod +x system_monitor.sh
./system_monitor.sh
```

**Exercise 5: Schedule a Cron Job**
```bash
# Edit crontab
crontab -e

# Add this line to run monitoring script every hour
# 0 * * * * /home/username/system_monitor.sh >> /home/username/monitor.log 2>&1

# Check cron jobs
crontab -l
```

---

## Phase 10: DevOps Foundations
**Duration:** 10-14 days

### What You'll Learn
- Version control with Git
- Configuration management basics
- Container fundamentals
- CI/CD concepts
- Infrastructure as Code introduction

### Key Concepts

#### 10.1 Version Control with Git

**Git Basics**
```bash
# Install Git
sudo apt install git

# Configure Git
git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"

# Initialize repository
git init
git clone https://github.com/user/repo.git

# Basic workflow
git status                    # Check status
git add filename.txt          # Stage file
git add .                     # Stage all files
git commit -m "Message"       # Commit changes
git push                      # Push to remote
git pull                      # Pull from remote
```

**Branching**
```bash
git branch                    # List branches
git branch feature-branch     # Create branch
git checkout feature-branch   # Switch to branch
git checkout -b new-branch    # Create and switch
git merge feature-branch      # Merge branch
git branch -d feature-branch  # Delete branch
```

#### 10.2 Environment Management

**Environment Variables**
```bash
# Set environment variables
export APP_ENV=production
export DATABASE_URL=localhost:5432

# Make permanent (add to ~/.bashrc)
echo 'export APP_ENV=production' >> ~/.bashrc
source ~/.bashrc
```

**Configuration Files**
```bash
# Create config directory
mkdir -p ~/configs

# Example application config
cat > ~/configs/app.conf << 'EOF'
server_port=8080
database_host=localhost
database_port=5432
log_level=info
EOF
```

#### 10.3 Container Basics (Docker Introduction)

**Docker Concepts**
- **Container:** Lightweight, standalone package with everything needed to run an application
- **Image:** Template used to create containers
- **Dockerfile:** Instructions to build an image

**Basic Docker Commands**
```bash
# Install Docker (Ubuntu)
sudo apt update
sudo apt install docker.io
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER

# Basic commands
docker --version
docker run hello-world
docker ps                     # List running containers
docker ps -a                  # List all containers
docker images                 # List images
docker pull ubuntu:20.04      # Download image
docker run -it ubuntu:20.04 bash  # Run interactive container
```

#### 10.4 Automation Basics

**Makefiles**
```bash
# Create Makefile
cat > Makefile << 'EOF'
.PHONY: install test clean deploy

install:
	@echo "Installing dependencies..."
	sudo apt update
	sudo apt install -y curl wget

test:
	@echo "Running tests..."
	./test.sh

clean:
	@echo "Cleaning up..."
	rm -f *.log *.tmp

deploy:
	@echo "Deploying application..."
	./deploy.sh

help:
	@echo "Available targets:"
	@echo "  install  - Install dependencies"
	@echo "  test     - Run tests"
	@echo "  clean    - Clean temporary files"
	@echo "  deploy   - Deploy application"
EOF

# Use Makefile
make help
make install
```

**Configuration Management with Ansible (Introduction)**
```yaml
# Create simple playbook
cat > setup.yml << 'EOF'
---
- hosts: localhost
  become: yes
  tasks:
    - name: Update package cache
      apt:
        update_cache: yes
    
    - name: Install essential packages
      apt:
        name:
          - curl
          - wget
          - git
          - vim
        state: present
    
    - name: Create application directory
      file:
        path: /opt/myapp
        state: directory
        mode: '0755'
EOF
```

#### 10.5 Monitoring and Logging

**Application Logging**
```bash
# Create logging script
cat > app_logger.sh << 'EOF'
#!/bin/bash
LOG_FILE="/var/log/myapp.log"
LOG_LEVEL="INFO"

log_message() {
    local level=$1
    local message=$2
    echo "$(date '+%Y-%m-%d %H:%M:%S') [$level] $message" | sudo tee -a $LOG_FILE
}

# Usage examples
log_message "INFO" "Application started"
log_message "ERROR" "Failed to connect to database"
log_message "WARN" "High memory usage detected"
EOF

chmod +x app_logger.sh
```

### Practical Exercises

**Exercise 1: Git Workflow**
```bash
# Create a project repository
mkdir ~/devops-project
cd ~/devops-project
git init

# Create a simple project
echo "# DevOps Learning Project" > README.md
mkdir scripts configs docs

# Create some files
echo "#!/bin/bash\necho 'Deploy script'" > scripts/deploy.sh
echo "app_port=3000" > configs/app.conf
echo "# Documentation" > docs/setup.md

# Git workflow
git add .
git status
git commit -m "Initial project structure"

# Create a feature branch
git checkout -b feature/monitoring
echo "#!/bin/bash\necho 'Monitoring script'" > scripts/monitor.sh
git add scripts/monitor.sh
git commit -m "Add monitoring script"

# Merge back to main
git checkout main
git merge feature/monitoring
git log --oneline
```

**Exercise 2: Configuration Management**
```bash
# Create environment-specific configs
mkdir -p ~/devops-project/configs/{dev,staging,prod}

# Development config
cat > ~/devops-project/configs/dev/app.conf << 'EOF'
environment=development
debug=true
database_host=localhost
database_port=5432
log_level=debug
EOF

# Production config
cat > ~/devops-project/configs/prod/app.conf << 'EOF'
environment=production
debug=false
database_host=prod-db.company.com
database_port=5432
log_level=warn
EOF

# Environment loader script
cat > ~/devops-project/scripts/load_env.sh << 'EOF'
#!/bin/bash
ENV=${1:-dev}
CONFIG_FILE="configs/$ENV/app.conf"

if [ ! -f "$CONFIG_FILE" ]; then
    echo "Error: Configuration file $CONFIG_FILE not found"
    exit 1
fi

echo "Loading $ENV environment..."
while IFS='=' read -r key value; do
    if [[ ! $key =~ ^# && -n $key ]]; then
        export $key=$value
        echo "Set $key=$value"
    fi
done < "$CONFIG_FILE"
EOF

chmod +x ~/devops-project/scripts/load_env.sh

# Test environment loading
cd ~/devops-project
./scripts/load_env.sh dev
```

**Exercise 3: Simple CI/CD Pipeline**
```bash
# Create a deployment pipeline script
cat > ~/devops-project/scripts/pipeline.sh << 'EOF'
#!/bin/bash
set -e

echo "=== DevOps Pipeline Starting ==="

# Stage 1: Test
echo "Stage 1: Running tests..."
if [ -f "scripts/test.sh" ]; then
    ./scripts/test.sh
else
    echo "No tests found, skipping..."
fi

# Stage 2: Build
echo "Stage 2: Building application..."
if [ -f "scripts/build.sh" ]; then
    ./scripts/build.sh
else
    echo "No build script found, skipping..."
fi

# Stage 3: Deploy
echo "Stage 3: Deploying application..."
if [ -f "scripts/deploy.sh" ]; then
    ./scripts/deploy.sh
else
    echo "No deployment script found, skipping..."
fi

echo "=== Pipeline Complete ==="
EOF

# Create test script
cat > ~/devops-project/scripts/test.sh << 'EOF'
#!/bin/bash
echo "Running application tests..."
echo "✓ All tests passed"
EOF

# Create build script
cat > ~/devops-project/scripts/build.sh << 'EOF'
#!/bin/bash
echo "Building application..."
echo "✓ Build successful"
EOF

# Update deploy script
cat > ~/devops-project/scripts/deploy.sh << 'EOF'
#!/bin/bash
echo "Deploying to production..."
echo "✓ Deployment successful"
EOF

chmod +x ~/devops-project/scripts/*.sh

# Run pipeline
cd ~/devops-project
./scripts/pipeline.sh
```

---

## Practice Projects

### Project 1: System Health Monitor
Create a comprehensive system monitoring solution.

**Requirements:**
- Monitor CPU, memory, disk usage
- Send alerts when thresholds exceeded
- Log all metrics to files
- Create web dashboard (simple HTML)

### Project 2: Automated Backup System
Build a backup automation system.

**Requirements:**
- Backup specified directories
- Compress and timestamp backups
- Rotate old backups (keep last 7 days)
- Email notification on completion/failure

### Project 3: Web Server Setup
Set up and configure a web server.

**Requirements:**
- Install and configure Apache/Nginx
- Set up virtual hosts
- Configure SSL certificates
- Implement log rotation
- Create deployment scripts

### Project 4: Development Environment Setup
Create scripts to set up development environments.

**Requirements:**
- Install development tools (Git, Docker, etc.)
- Configure shell environment
- Set up dotfiles management
- Create project templates

---

## Next Steps

### Advanced Linux Topics
1. **Advanced Shell Scripting**
   - Complex regex patterns
   - Advanced parameter expansion
   - Signal handling

2. **System Performance Tuning**
   - Kernel parameters
   - Memory management
   - I/O optimization

3. **Security Hardening**
   - Firewall configuration (iptables/ufw)
   - SELinux/AppArmor
   - Security auditing

### DevOps Tools to Learn
1. **Configuration Management**
   - Ansible (beginner-friendly)
   - Puppet or Chef

2. **Containerization**
   - Docker (deep dive)
   - Kubernetes basics

3. **CI/CD Tools**
   - Jenkins
   - GitLab CI/CD
   - GitHub Actions

4. **Infrastructure as Code**
   - Terraform
   - CloudFormation (AWS)

5. **Monitoring and Logging**
   - Prometheus + Grafana
   - ELK Stack (Elasticsearch, Logstash, Kibana)

6. **Cloud Platforms**
   - AWS fundamentals
   - Google Cloud Platform
   - Microsoft Azure

### Recommended Learning Path
1. Complete this Linux guide (8-12 weeks)
2. Learn Docker and containerization (2-3 weeks)
3. Study one configuration management tool (3-4 weeks)
4. Learn a cloud platform (4-6 weeks)
5. Practice with CI/CD tools (3-4 weeks)
6. Build real projects combining all skills

### Resources for Continued Learning
- **Books:** "The Linux Command Line" by William Shotts
- **Online Courses:** Linux Academy, A Cloud Guru
- **Practice:** OverTheWire wargames, HackerRank Linux challenges
- **Communities:** r/linux, Stack Overflow, DevOps communities

---

## Conclusion

This comprehensive guide provides a structured path from complete beginner to Linux proficiency with DevOps readiness. Remember:

1. **Practice consistently** - Set aside time daily for hands-on practice
2. **Build projects** - Apply what you learn in real scenarios
3. **Join communities** - Connect with other learners and professionals
4. **Stay curious** - Linux and DevOps are constantly evolving
5. **Document your journey** - Keep notes and create your own reference materials

The key to success is consistent practice and real-world application. Don't rush through the phases; make sure you're comfortable with each before moving to the next.

Good luck on your Linux and DevOps journey!
