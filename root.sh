#!/bin/bash


sed -i "/PasswordAuthentication no/d" /etc/ssh/sshd_config
echo "" | sudo tee -a /etc/ssh/sshd_config
echo "" | sudo tee -a /etc/ssh/sshd_config
echo "PermitRootLogin yes" | sudo tee -a /etc/ssh/sshd_config
echo "PasswordAuthentication yes" | sudo tee -a /etc/ssh/sshd_config
systemctl restart sshd
ip=$(curl ifconfig.me/ip)
clear
sleep 1
printf "
 ____           _             _ 
|  _ \    ___  | |_    ___   | |
| | | |  / _ \ | __|  / _ \  | |
| |_| | |  __/ | |_  | (_) | | |
|____/   \___|  \__|  \___/  |_|
"                                
echo
echo "🐨 NIH TAK KASIH CARA BIAR GAMPANG LOGIN VPS AWS wkwk 🐨"
echo "============================================"
user=root
echo "KASIH PASWORDNYA COYYYY: " 
read -e pw
pwe=$(mkpasswd $pw)

clear
usermod --password $pwe $user
clear

echo ""
printf "🐨 INGATTTT.. Simpan Paswordnya coy kalo gamau gw havk WKWKWK 🐨
============================================
Ip address = $ip
Username   = $user
Password   = $pw
============================================"
sleep 1
echo ""
echo 
exit
