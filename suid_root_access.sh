#!/bin/bash

echo "Bad Linux sysadmin is configuring this box..."
chmod u+s /bin/bash 
chmod +s /bin/bash 
echo "%wheel ALL=(ALL) ALL" >> /etc/sudoers
echo ""

echo ""
echo "Step 1: Lets see if we can run anything as root, type:"
printf "\x1b[31m\"find /bin -perm /4000\"\x1b[0m\n"
printf "\nStep 2: Type \x1b[31m\"sudo bash -p\"\x1b[0m\n ";
echo ""
echo "The default password for user1 is 'password'"
echo ""
echo "You should now be root, type"
printf "\x1b[31m\"whoami\"\x1b[0m\n"
echo ""

echo "Changing to user1..."
adduser -S user1 -G wheel -u 321 -D -s /bin/bash
echo user1:password | chpasswd
su user1
clear
cd $HOME 
whoami

 
