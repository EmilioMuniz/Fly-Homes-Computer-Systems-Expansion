# Script Name: Thunderbird Setup
# Author Name: Carsten Rossen
# Date of Latest Revision: 2/16/21
# Purpose: Downloads and installs Mozilla Thunderbird with default settings using PowerShell. 

# Main

# Starts download with Microsoft Edge and waits 60 seconds for download to complete
start microsoft-edge:https://en.softonic.com/download/mozilla-thunderbird/windows/post-download
Start-Sleep -Seconds 60

# Silently installs Thunderbird with default settings
cd C:\Users\first\Downloads
Start-Process '.\Thunderbird_Setup_78.7.1.exe' "/S"
