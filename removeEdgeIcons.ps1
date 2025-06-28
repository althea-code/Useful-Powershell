# Define the sequence of characters to look for (first few characters of the filename)
$searchPrefix = "Insert Filename here"

# Get the path to the desktop folder for the current user
$desktopPath = [System.Environment]::GetFolderPath('Desktop')

# Get all shortcut files (icons) on the desktop
$desktopFiles = Get-ChildItem -Path $desktopPath -Filter "*.lnk"

# Loop through each shortcut file and check if its name starts with the search prefix
foreach ($file in $desktopFiles) {
    if ($file.Name -like "$searchPrefix*") {
        Write-Host "Removing: $($file.Name)"
        Remove-Item -Path $file.FullName -Force
    }
}
