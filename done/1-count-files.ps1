# Count of all the files in the directory

$ErrorActionPreference = "Stop"

$files = (Get-ChildItem -Recurse).Length
Write-Host "There are $files in this directory."
