#!/bin/bash

# Change to the directory containing your MP3 files
cd /location/to/mp3/files

# Loop through files and crop at the '.'
for file in *mp3; do
echo "$file" | cut -d'.' -f1
done
