$Password = ConvertTo-SecureString "flyhomes123" -AsPlainText -Force
New-LocalUser "second" -Password $Password 
Add-LocalGroupMember -Group "Users" -Member "second"
