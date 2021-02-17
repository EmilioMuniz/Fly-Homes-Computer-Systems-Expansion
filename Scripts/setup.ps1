# Script Name: Setup
# Author Name: Carsten Rossen
# Date of Latest Revision: 2/16/21
# Purpose: Installs Thunderbird and enables RDP connectivity.
# NOTE: If running scripts is disabled on system, type 'Set-ExecutionPolicy -ExecutionPolicy Unrestricted'



# Variables

# Username and password for new user
$Username = ""



# Functions

# Downloads and installs Mozilla Thunderbird with default settings using PowerShell.
function Setup-Thunderbird {
  cd C:\Users\$Username\Downloads

  # Starts download with Microsoft Edge and waits 60 seconds for download to complete
  # Starts the download twice in case it doesn't start the first time
  start microsoft-edge:https://en.softonic.com/download/mozilla-thunderbird/windows/post-download
  Start-Sleep -Seconds 1
  start microsoft-edge:https://en.softonic.com/download/mozilla-thunderbird/windows/post-download
  Start-Sleep -Seconds 60

  # Silently installs Thunderbird with default settings
  Start-Process '.\Thunderbird_Setup_78.7.1.exe' "/S"
}

# Allows an RDP connection to be established to this Windows 10 while leaving the firewall enabled.
function Setup-RDP {
  Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server' -name "fDenyTSConnections" -Value 0
  Enable-NetFirewallRule -DisplayGroup "Remote Desktop"
}



# Main

$Username = Read-Host "Username"

Setup-Thunderbird
Setup-RDP

# End
