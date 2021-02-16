# Script Name: Setup
# Author Name: Carsten Rossen
# Date of Latest Revision: 2/16/21
# Purpose: Installs Thunderbird, enables RDP connectivity, and creates a new local user account.



# Variables (ASSIGN BEFORE RUNNING)

# Set a username for the new user using 'firstname.lastname' convention
$Username = ""

# Set a password for the new user using 'firstname.lastname' convention
$Password = ""



# Functions

# Creates new non-administratvie user with specified password
function Setup-User {
  $Passkey = ConvertTo-SecureString $Password -AsPlainText -Force
  New-LocalUser $Username -Password $Passkey 
  Add-LocalGroupMember -Group "Users" -Member $Username
}

# Downloads and installs Mozilla Thunderbird with default settings using PowerShell.
function Setup-Thunderbird {
  cd C:\Users\username\Downloads

  # Starts download with Microsoft Edge and waits 60 seconds for download to complete
  # Starts the download twice in case it doesn't start the first time
  start microsoft-edge:https://en.softonic.com/download/mozilla-thunderbird/windows/post-download
  Start-Sleep -Seconds 1
  start microsoft-edge:https://en.softonic.com/download/mozilla-thunderbird/windows/post-download
  Start-Sleep -Seconds 60

  # Silently installs Thunderbird with default settings
  Start-Process '.\Thunderbird_Setup_78.7.1.exe' "/S"
}

