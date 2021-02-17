# Script Name: User Setup
# Author Name: Carsten Rossen
# Date of Latest Revision: 2/16/21
# Purpose: Creates a new local user

# Variables
$Password = ConvertTo-SecureString "flyhomes123" -AsPlainText -Force
$Username = ""


# Main

# Creates new non-administratvie user with specified password
$Username = Read-Host "Username"
New-LocalUser $Username -Password $Password 
Add-LocalGroupMember -Group "Users" -Member $Username

# End
