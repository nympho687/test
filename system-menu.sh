#!/bin/bash
green='\e[32m'
RED='\033[0;31m'
NC='\033[0m'
BGBLUE='\e[1;44m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
NC='\033[0;37m'
clear
echo -e "${green} ══════════════════════════════════════════${NC}"
echo -e " ${BGBLUE}         [ SISTEM MENU ]                  ${NC}"
echo -e "${green} ══════════════════════════════════════════${NC}"
echo -e "$green (•1) $NC Add New Subdomain"
echo -e "$green (•2) $NC Renew Cert Xray Core"
echo -e "$green (•3) $NC Autobackup Vps"
echo -e "$green (•4) $NC Backup Vps"
echo -e "$green (•5) $NC Restore Vps"
echo -e "$green (•6) $NC Install Webmin"
echo -e "$green (•7) $NC Info All Port"
echo -e "$green (•8) $NC Limit Bandwith Speed Server"
echo -e "$green (•9) $NC Speedtest Server"
echo -e "$green (10) $NC Auto Reboot"
echo -e "$green (11) $NC Update Script"
echo -e "${green} ══════════════════════════════════════════${NC}"
echo -e " ${BGBLUE}         x)   MENU                        ${NC}"
echo -e "${green} ══════════════════════════════════════════${NC}"
echo -e ""
read -p "     Select From Options [1-10 or x] :  " menu
case $menu in 
1)
add-host
;;
2)
certv2ray
;;
3)
autobackup
;;
4)
backup
;;
5)
restore
;;
6)
wbmn
;;
7)
info
;;
8)
limitspeed
;;
9)
speedtest-cli
;;
10)
autoreboot
;;
11)
update
;;
x)
menu
;;
*)
echo "Input The Correct Number !"
;;
esac