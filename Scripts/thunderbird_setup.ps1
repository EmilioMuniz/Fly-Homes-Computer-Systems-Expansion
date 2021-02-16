# Script Name: Thunderbird Setup
# Author Name: Carsten Rossen
# Date of Latest Revision: 2/16/21
# Purpose: Downloads and installs Mozilla Thunderbird with default settings using PowerShell. 

# Main

# Starts download with Microsoft Edge and waits 60 seconds for download to complete
# Starts the download twice in case it doesn't start the first time
start microsoft-edge:https://en.softonic.com/download/mozilla-thunderbird/windows/post-download
start microsoft-edge:https://en.softonic.com/download/mozilla-thunderbird/windows/post-download
Start-Sleep -Seconds 60

# Silently installs Thunderbird with default settings
# NOTE: 'username' NEEDS TO BE CHANGED TO MATCH ENVIRONMENT
cd C:\Users\username\Downloads
Start-Process '.\Thunderbird_Setup_78.7.1.exe' "/S"

# End
