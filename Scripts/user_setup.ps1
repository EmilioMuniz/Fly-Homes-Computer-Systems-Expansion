# Script Name: User Setup
# Author Name: Carsten Rossen
# Date of Latest Revision: 2/16/21
# Purpose: Creates a new local user

# Main

# Creates new non-administratvie user with specified password
$Password = ConvertTo-SecureString "flyhomes123" -AsPlainText -Force
New-LocalUser "second" -Password $Password 
Add-LocalGroupMember -Group "Users" -Member "second"

# End
