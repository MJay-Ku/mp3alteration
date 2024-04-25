# Define the folder containing the MP3 files
$folder = "C:\Users\Myself\Music\Quran\MP3\Badr"

# Check if the folder exists
if (-not (Test-Path $folder -PathType Container)) {
    Write-Host "Folder not found: $folder"
    exit 1
}

# Get a list of MP3 files in the folder
$mp3Files = Get-ChildItem -Path $folder -Filter *.mp3

# Loop through MP3 files and unblock them
foreach ($file in $mp3Files) {
    # Unblock the file
    Unblock-File -Path $file.FullName
    Write-Host "Unblocked: $($file.Name)"
}

Write-Host "All MP3 files unblocked."

