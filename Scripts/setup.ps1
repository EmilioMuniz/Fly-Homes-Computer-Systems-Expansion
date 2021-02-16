# Script Name: Setup
# Author Name: Carsten Rossen
# Date of Latest Revision: 2/16/21
# Purpose: Installs Thunderbird, enables RDP connectivity, and creates a new local user account.

# Variables (ASSIGN BEFORE RUNNING)

# Set a username for the new user using 'firstname.lastname' convention
$Username = ""

# Set a password for the new user using 'firstname.lastname' convention
$Password = ""

# Main

# Creates new non-administratvie user with specified password
$Passkey = ConvertTo-SecureString $Password -AsPlainText -Force
New-LocalUser $Username -Password $Passkey 
Add-LocalGroupMember -Group "Users" -Member $Username
