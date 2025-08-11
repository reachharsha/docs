#!/bin/bash

# File Operations Practice Script
echo "=== File Operations Practice ==="
echo "This script guides you through essential file operations"
echo

# Setup practice area
PRACTICE_DIR="$HOME/file-operations-practice"
echo "Creating practice directory: $PRACTICE_DIR"
mkdir -p "$PRACTICE_DIR"
cd "$PRACTICE_DIR"

echo "Current directory: $(pwd)"
echo

# Create sample files
echo "Creating sample files..."
echo "This is a sample text file" > sample1.txt
echo "Another text file for practice" > sample2.txt
echo "#!/bin/bash" > script.sh
echo "echo 'Hello World'" >> script.sh

# Create sample directories
mkdir documents pictures scripts

echo "Initial setup complete!"
echo
echo "Files and directories created:"
ls -la
echo

echo "=== PRACTICE EXERCISES ==="
echo "Try these commands one by one:"
echo
echo "1. VIEWING FILES:"
echo "   cat sample1.txt"
echo "   less sample2.txt  (press 'q' to quit)"
echo "   head -2 sample1.txt"
echo "   tail -1 sample2.txt"
echo

echo "2. COPYING FILES:"
echo "   cp sample1.txt backup1.txt"
echo "   cp sample2.txt documents/"
echo "   cp -r documents/ backup-documents/"
echo

echo "3. MOVING/RENAMING FILES:"
echo "   mv script.sh scripts/"
echo "   mv backup1.txt renamed-file.txt"
echo

echo "4. CREATING FILES:"
echo "   touch newfile.txt"
echo "   echo 'Hello Linux' > greeting.txt"
echo "   echo 'Second line' >> greeting.txt"
echo

echo "5. REMOVING FILES (BE CAREFUL!):"
echo "   rm newfile.txt"
echo "   rm -r backup-documents/"
echo

echo "6. CHECK YOUR WORK:"
echo "   ls -la"
echo "   ls documents/"
echo "   ls scripts/"
echo "   cat greeting.txt"
echo

echo "=== SAFETY TIPS ==="
echo "- Always use 'ls' to see what's in a directory before removing files"
echo "- Use 'ls -la' to see hidden files and detailed information"
echo "- Be very careful with 'rm -r' and 'rm -rf' commands"
echo "- Test commands on practice files first"
echo

echo "Practice directory created at: $PRACTICE_DIR"
echo "Navigate there with: cd $PRACTICE_DIR"
