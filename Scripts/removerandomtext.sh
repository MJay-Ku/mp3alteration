# Specify the folder path containing the MP3 files
#folder_path=/mnt/c/Documents\ and\ Settings/Myself/Music/Quran/MP3/Badr

#!/bin/bash

# Define the folder containing the MP3 files
folder_path=/mnt/c/Documents\ and\ Settings/Myself/Music/Quran/MP3/Fadl

# Function to clean the file name
clean_file_name() {
    local file_name="$1"
    if [[ $file_name =~ ^.*\｜\ (.*)\ \[.*\] ]]; then
        echo "${BASH_REMATCH[1]}.mp3"
    else
        echo "$file_name"
    fi
}

# Loop through the files in the folder
for file_path in "$folder_path"/*.mp3; do
    base_name=$(basename "$file_path" .mp3)
    new_name=$(clean_file_name "$base_name")
    new_file_path="$folder_path/$new_name"
    
    # Rename the file only if the new name is different from the current name
    if [[ "$file_path" != "$new_file_path" ]]; then
        mv "$file_path" "$new_file_path"
        echo "Renamed: $base_name to $new_name"
    fi
done

echo "Renaming completed."
