#!/bin/bash

# Change to the directory containing your MP3 files
cd /location/of/mp3/files

# Iterate through all MP3 files
for file in *.mp3; do
    # Extract the file number (assuming the format is 001.mp3, 002.mp3, etc.)
    file_number=$(echo "$file" | cut -d'.' -f1)

    # Use eyeD3 to set the track number
    eyeD3 --track="$file_number" "$file"

    echo "Set track number for $file to $file_number"
done
