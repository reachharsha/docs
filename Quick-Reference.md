# Linux Learning - Quick Reference Guide

## Essential Commands Cheat Sheet

### Navigation
```bash
pwd                 # Show current directory
ls                  # List files
ls -la              # List files with details and hidden files
cd directory        # Change to directory
cd ~                # Go to home directory
cd ..               # Go up one directory
cd -                # Go to previous directory
```

### File Operations
```bash
touch filename      # Create empty file
mkdir dirname       # Create directory
cp file1 file2      # Copy file
cp -r dir1 dir2     # Copy directory recursively
mv oldname newname  # Rename/move file
rm filename         # Remove file
rm -r dirname       # Remove directory
```

### Viewing Files
```bash
cat filename        # Display entire file
less filename       # View file page by page (q to quit)
head filename       # Show first 10 lines
tail filename       # Show last 10 lines
tail -f filename    # Follow file (useful for logs)
```

### Text Processing
```bash
grep "pattern" file # Search for pattern in file
sort filename       # Sort lines alphabetically
uniq filename       # Remove duplicate lines
wc filename         # Count lines, words, characters
```

### Permissions
```bash
chmod 755 file      # Set permissions (rwxr-xr-x)
chmod +x file       # Add execute permission
chown user:group file # Change owner and group
```

### Processes
```bash
ps aux              # List all processes
top                 # Real-time process monitor
kill PID            # Terminate process
jobs                # List background jobs
```

### System Information
```bash
whoami              # Current username
id                  # User and group IDs
uname -a            # System information
date                # Current date and time
uptime              # System uptime
df -h               # Disk space usage
free -h             # Memory usage
```

### Networking
```bash
ping host           # Test connectivity
wget URL            # Download file
curl URL            # Display webpage/API response
ip addr show        # Show IP addresses
```

## Common File Locations

```
/home/username/     # Your home directory
/etc/               # System configuration files
/var/log/           # Log files
/tmp/               # Temporary files
/usr/bin/           # User programs
/opt/               # Optional software
```

## Useful Keyboard Shortcuts

```
Ctrl+C              # Interrupt current command
Ctrl+Z              # Suspend current command
Ctrl+D              # End of file / logout
Ctrl+A              # Move to beginning of line
Ctrl+E              # Move to end of line
Ctrl+R              # Search command history
Tab                 # Auto-complete
Up/Down arrows      # Command history
```

## File Permission Numbers

```
4 = read (r)
2 = write (w)
1 = execute (x)

755 = rwxr-xr-x (Owner: all, Group/Others: read+execute)
644 = rw-r--r-- (Owner: read+write, Group/Others: read only)
600 = rw------- (Owner: read+write, Group/Others: no access)
```

## Special Characters

```
~                   # Home directory
.                   # Current directory
..                  # Parent directory
*                   # Wildcard (matches anything)
?                   # Single character wildcard
|                   # Pipe (send output to next command)
>                   # Redirect output to file (overwrite)
>>                  # Redirect output to file (append)
&                   # Run command in background
```

## Environment Variables

```bash
echo $HOME          # Home directory
echo $PATH          # Executable search path
echo $USER          # Current username
echo $PWD           # Current directory
export VAR=value    # Set environment variable
```

## Git Basics (for DevOps)

```bash
git init            # Initialize repository
git add file        # Stage file for commit
git commit -m "msg" # Commit changes
git status          # Check repository status
git log             # View commit history
git branch          # List branches
git checkout branch # Switch to branch
git pull            # Pull changes from remote
git push            # Push changes to remote
```

## Package Management (Ubuntu)

```bash
sudo apt update     # Update package list
sudo apt upgrade    # Upgrade all packages
sudo apt install pkg # Install package
sudo apt remove pkg # Remove package
sudo apt search keyword # Search for packages
```

---

*Keep this reference handy while practicing!*
