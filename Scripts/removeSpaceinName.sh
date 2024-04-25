#!/bin/bash

# Specify the folder path containing the MP3 files
folder_path=/mnt/c/Documents\ and\ Settings/Myself/Music/Quran/MP3/Badr

# Go to the specified folder
cd "$folder_path" || exit

# Loop through each file in the folder
for file in *.mp3; do
    # Remove spaces before .mp3 extension
    new_file=$(echo "$file" | sed 's/ *\.mp3$/.mp3/')
    
    # Rename the file if there are spaces before .mp3 extension
    if [ "$file" != "$new_file" ]; then
        mv "$file" "$new_file"
        echo "Renamed $file to $new_file"
    fi
done

echo "All spaces before .mp3 extension have been removed."
