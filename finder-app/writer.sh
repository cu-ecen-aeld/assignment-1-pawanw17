#!/bin/bash

# Check if both parameters are provided
if [ $# -ne 2 ]; then
    echo "Error: Two arguments required. Usage: $0 <writefile> <writestr>"
    exit 1
fi

writefile=$1
writestr=$2

# Extract directory path from writefile
dirpath=$(dirname "$writefile")

# Create the directory path if it does not exist
mkdir -p "$dirpath"
if [ $? -ne 0 ]; then
    echo "Error: Failed to create directory path '$dirpath'"
    exit 1
fi

# Write the string to the file (overwrite if it exists)
echo "$writestr" > "$writefile"
if [ $? -ne 0 ]; then
    echo "Error: Failed to write to file '$writefile'"
    exit 1
fi

exit 0
