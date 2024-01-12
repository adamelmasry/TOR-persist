# Change Execution Policy to Unrestricted for Current User
Set-ExecutionPolicy Unrestricted -Scope CurrentUser -Force

# URL to download the Tor Browser
$url = "https://dist.torproject.org/torbrowser/13.0/tor-browser-windows-x86_64-portable-13.0.exe"

# Destination directory
$destinationDir = [Environment]::GetFolderPath("MyDocuments")

# Full destination path (directory + filename)
$destination = Join-Path -Path $destinationDir -ChildPath "tor-browser-windows-x86_64-portable-13.0.exe"

# Registry path for persistence
$registryPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run"

# Registry key name
$registryKeyName = "TorBrowserAutoStart"

# PowerShell command to run at startup
$command = "PowerShell -WindowStyle Hidden -Command `"$destination`""

# Error handling
try {
    # Create or update registry key for persistence
    Set-ItemProperty -Path $registryPath -Name $registryKeyName -Value $command

    # Download the file
    Invoke-WebRequest -Uri $url -OutFile $destination -ErrorAction Stop

    # Check the downloaded file and run it
    if (Test-Path $destination) {
        Write-Output "File downloaded successfully to $destination"
        Start-Process -FilePath $destination
    } else {
        Write-Output "Failed to download the file."
    }
} catch {
    Write-Output "An error occurred: $_.Exception.Message"
}
