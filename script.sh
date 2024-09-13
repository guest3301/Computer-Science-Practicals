#!/bin/bash

# Clear the terminal screen
echo "Clearing the terminal screen..."
sleep 4
clear

# Show the current working directory
echo "Current directory:"
pwd
echo

# List the files in the current directory
echo "Listing files:"
ls
echo

# Make a new directory
echo "Creating a new directory 'test_dir':"
mkdir test_dir
echo "Listing files after creating 'test_dir':"
ls
echo

# Change into the new directory
echo "Changing into 'test_dir':"
cd test_dir
echo "Current directory after cd:"
pwd
echo

# Create a new file
echo "Creating a new file 'file.txt':"
touch file.txt
echo "Listing files after creating 'file.txt':"
ls
echo

# Display the content of the new file (it should be empty)
echo "Content of 'file.txt':"
cat file.txt
echo

# Write some text to 'file.txt'
echo "Writing 'Hello World' to 'file.txt':"
echo "Hello World" > file.txt
echo "Content of 'file.txt' after writing:"
cat file.txt
echo

# Count lines, words, and characters in 'file.txt'
echo "Counting lines, words, and characters in 'file.txt':"
wc file.txt
echo

# Copy 'file.txt' to a new file 'file_copy.txt'
echo "Copying 'file.txt' to 'file_copy.txt':"
cp file.txt file_copy.txt
echo "Listing files after copying 'file.txt':"
ls
echo

# Move 'file_copy.txt' to 'file_moved.txt'
echo "Moving 'file_copy.txt' to 'file_moved.txt':"
mv file_copy.txt file_moved.txt
echo "Listing files after moving 'file_copy.txt':"
ls
echo

# Display file type information for 'file_moved.txt'
echo "File type of 'file_moved.txt':"
file file_moved.txt
echo

# Display contents of 'file_moved.txt' in octal format
echo "Octal dump of 'file_moved.txt':"
od -c file_moved.txt
echo

# Compare 'file.txt' and 'file_moved.txt'
echo "Comparing 'file.txt' and 'file_moved.txt':"
cmp file.txt file_moved.txt
echo

# Display common lines between 'file.txt' and 'file_moved.txt'
echo "Common lines between 'file.txt' and 'file_moved.txt':"
comm -12 <(sort file.txt) <(sort file_moved.txt)
echo

# Change file permissions of 'file_moved.txt' to 755
echo "Changing permissions of 'file_moved.txt' to 755:"
chmod 755 file_moved.txt
echo "Listing files after changing permissions:"
ls -l file_moved.txt
echo

# Compress 'file_moved.txt' using gzip
echo "Compressing 'file_moved.txt' with gzip:"
gzip file_moved.txt
echo "Listing files after compressing:"
ls
echo

# Decompress 'file_moved.txt.gz' using gunzip
echo "Decompressing 'file_moved.txt.gz' with gunzip:"
gunzip file_moved.txt.gz
echo "Listing files after decompressing:"
ls
echo

# Create a zip archive of 'file.txt'
echo "Creating a zip archive 'file.zip' containing 'file.txt':"
zip file.zip file.txt
echo "Listing files after creating zip archive:"
ls
echo

# Unzip 'file.zip'
echo "Unzipping 'file.zip':"
unzip file.zip
echo "Listing files after unzipping:"
ls
echo

# Archive 'file.txt' into 'archive.tar.gz'
echo "Creating tar.gz archive 'archive.tar.gz' of 'file.txt':"
tar -czf archive.tar.gz file.txt
echo "Listing files after creating tar.gz archive:"
ls
echo

# Extract 'archive.tar.gz'
echo "Extracting 'archive.tar.gz':"
tar -xzf archive.tar.gz
echo "Listing files after extracting:"
ls
echo

# Display the man page for 'ls'
echo "Displaying the man page for 'ls':"
man ls
echo

ls
sleep 4
# Clean up by removing created files and directories
echo "Cleaning up..."
sleep 4
cd ..
rm -rf test_dir file.txt file_moved.txt file.zip archive.tar.gz file_copy.txt file_moved.txt.gz
echo "Listing files after cleanup:"
ls

echo "Script completed!"
