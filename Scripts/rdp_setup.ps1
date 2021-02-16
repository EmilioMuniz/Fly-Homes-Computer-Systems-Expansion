# Script Name: Remote Desktop Setup
# Author Name: Carsten Rossen
# Date of Latest Revision: 2/16/21
# Purpose: Allows an RDP connection to be established to this Windows 10 while leaving the firewall enabled.

# Main

Set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server' -name "fDenyTSConnections" -Value 0
Enable-NetFirewallRule -DisplayGroup "Remote Desktop"

# End
