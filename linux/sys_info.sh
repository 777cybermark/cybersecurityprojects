#!/bin/bash

echo "A Quick System Audit Script"
date
echo ""
echo "Machine Type Info:"
echo $MACHTYPE
echo -e "Uname info: $(uname -a) \n"
echo -e "IP Info: $(ip addr | grep inet | tail -2 | head -1) \n"
echo "Hostname: $(hostname -s) "
echo "DNS Servers: "
cat /etc/resolv.conf
echo "Memory Info:"
free

#Display CPU usage
echo -e "\nCPU Info:"
lscpu | grep CPU

# Display Disk usage
echo -e "\nDisk Usage:"
df -H | head -2

#Display the current user
echo -e "\nWho is logged in: \n $(who) \n"
