#!/bin/bash

# Check if the script was called with a file name
if [ -z "$1" ]; then
    echo "Please provide a LaTeX file name."
    exit 1
fi

# Set the path to your LaTeX file
TEX_FILE="$1"

# Debug: Show the path being used for the LaTeX file
echo "Checking file: $TEX_FILE"

# Check if the LaTeX file exists
if [ ! -f "$TEX_FILE" ]; then
    echo "ERROR: File not found or not readable: $TEX_FILE"
    exit 1
fi

# Get the directory of the script
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Count words and find specific words
texcount "$TEX_FILE" -inc -total -brief -freq | grep -f "$SCRIPT_DIR/avoid_words.txt"

echo "Done."