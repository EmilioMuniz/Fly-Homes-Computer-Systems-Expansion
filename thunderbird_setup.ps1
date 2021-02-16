# Script Name: Thunderbird Setup
# Class Name: Ops 201
# Author Name: Carsten Rossen
# Date of Latest Revision: 2/10/21
# Purpose: Saves domain information to a local file.

start microsoft-edge:https://en.softonic.com/download/mozilla-thunderbird/windows/post-download
cd C:\Users\first\Downloads
Start-Sleep -Seconds 60
Start-Process '.\Thunderbird_Setup_78.7.1.exe' "/S"
