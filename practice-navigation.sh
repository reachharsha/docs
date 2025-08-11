# Phase 3: Essential Linux Commands - Practice Scripts

## practice-navigation.sh
#!/bin/bash

echo "=== Linux Navigation Practice ==="
echo "This script will create a practice directory structure"
echo "and guide you through navigation exercises."
echo

# Create practice directory structure
echo "Creating practice directories..."
mkdir -p ~/linux-practice/{documents/{work,personal},downloads,pictures/{2023,2024},projects/{web,scripts}}

# Create some sample files
touch ~/linux-practice/documents/work/report.txt
touch ~/linux-practice/documents/work/presentation.pdf
touch ~/linux-practice/documents/personal/letter.txt
touch ~/linux-practice/downloads/software.zip
touch ~/linux-practice/pictures/2023/vacation.jpg
touch ~/linux-practice/pictures/2024/birthday.png
touch ~/linux-practice/projects/web/index.html
touch ~/linux-practice/projects/scripts/backup.sh

echo "Practice structure created in ~/linux-practice/"
echo
echo "Now practice these commands:"
echo "1. cd ~/linux-practice"
echo "2. pwd"
echo "3. ls -la"
echo "4. cd documents/work"
echo "5. ls"
echo "6. pwd"
echo "7. cd ../../pictures"
echo "8. ls -la"
echo "9. cd ../projects/scripts"
echo "10. pwd"
echo
echo "Try to navigate to different directories using both"
echo "absolute paths (starting with /) and relative paths"
echo
echo "Remember:"
echo "- pwd shows where you are"
echo "- ls shows what's in current directory"
echo "- cd .. goes up one level"
echo "- cd ~ goes to home directory"
