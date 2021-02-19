# Script Name: mount_shared_network_drive.ps1
# Author Name: Ethan Denny
# Date of Latest Revision: 2/18/21
# Purpose: Persistently mounts a Samba shared folder hosted by the Linux File Server as L:\

# See: https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/new-psdrive?view=powershell-7.1
#
#
#
# WARNING: ***THIS SCRIPT ONLY SERVES ITS PURPOSE IF IT IS RUN AS USER WITHOUT ELEVATED PRIVILEGES***
#
# Possible solution: use Invoke-Command in a master setup script to invoke this script as a specific user
#
# Unfortunately, "Mapped network drives are specific to a user account. Mapped drives created in elevated sessions or 
# sessions using the credential of another user aren't visible in sessions started using different credentials."
# (From the MS Documentation for New-PSDrive, linked above.)
# If you run this script as administrator, it's only accessible to the administrator.




# Variables

# This line gets the credentials for the current, non-adminstrative user

# This variable contains all the parameters that will later be called by the New-PSDrive cmdlet
$parameters = @{
    Name = "K"
    PSProvider = "FileSystem"
    Root = "\\192.168.1.117\sambashare"
    Credential = "server"
}

# Functions

# Main

# This line calls the cmdlet New-PSDrive to persistently mount a network folder as specified in $parameters
New-PSDrive @parameters -Persist


# End
