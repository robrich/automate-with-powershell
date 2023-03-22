
$ErrorActionPreference = "Stop"

# Open ./data/file.cs
# Change 'GITHASH' to the current git hash
# Save the file

(Get-Content ./data/file.cs).replace('GITHASH', (git rev-parse --short HEAD)) | Set-Content ./data/file.cs
