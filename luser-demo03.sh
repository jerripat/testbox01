#!/bin/bash

read -p 'Enter the user name to create: ' USER_NAME''

# Ask for real name
read -p 'Enter the name of the person who this account is for: ' COMMENT

#Ask for password
read -p 'Enter the password to use for the account: '  Passwrd

#Create the user
sudo useradd jerripat
sudo su - jerripat
useradd -c "${COMMENT}" -m ${USER_NAME}

#Set the password for the user.
echo ${PASSWORD} | passwd --stdin ${USER_NAME}

# Force password chane on first login.
passwd -e ${USER_NAME}