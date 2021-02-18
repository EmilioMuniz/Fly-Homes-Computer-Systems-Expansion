#!/bin/bash

# Script Name: samba_share.sh
# Author Name: Emilio Muniz
# Date of Latest Revision: 2/17/21
# Purpose: Installs Samba and sets up sambashare folder.

#Declaration of variables:
var1=username


#To install Samba run:
sudo apt update

sudo apt install samba

#To check if install was successful run:
whereis samba

#The following should be the output:
#samba: /usr/sbin/samba /usr/lib/samba /etc/samba /usr/share/samba /usr/share/man/man7/samba.7.gz /usr/share/man/man8/samba.8.gz
sleep 5

#To make directory for Samba to share run:
echo "What is your username?"

read var1

mkdir /home/$var1/sambashare/

#To add new directory as a share edit the file by running:
sudo nano /etc/samba/smb.conf

#At the bottom of the file add these lines without "#":

#[sambashare]
    #comment = Samba on Ubuntu
    #path = /home/username/sambashare
    #read only = no
    #browsable = yes

#Then press Ctrl-o to save and Ctrl-x to exit.

#Restart Samba run:
sudo service smbd Restart

sleep 5

#Update firewall rules to allow Samba traffic:
sudo ufw allow samba

#Set up user account and sharing.
sudo smbpasswd -a username

#Resources:https://ubuntu.com/tutorials/install-and-configure-samba#2-installing-samba

#End
