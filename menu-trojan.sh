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
echo -e " ${BGBLUE}          ┃ PANEL Trojan  ┃               ${NC}"
echo -e "${green} ══════════════════════════════════════════${NC}"
echo -e "$green (•1) $NC Create Trojan Account\e[0m"
echo -e "$green (•2) $NC Deleting Trojan Account\e[0m"
echo -e "$green (•3) $NC Extending Trojan Account Active Life\e[0m"
echo -e "$green (•4) $NC Check User Login Trojan\e[0m"
echo -e ""
echo -e "$CYAN      >> Total      : $(grep -c -E "^###" "/etc/trojan/config.json")${NC}"
echo -e "${green} ══════════════════════════════════════════${NC}"
echo -e " ${BGBLUE}         x)   MENU                        ${NC}"
echo -e "${green} ══════════════════════════════════════════${NC}"
echo -e ""
read -p "   Select From Options [1-4 or x]: " menutrojan
echo -e ""
case $menutrojan in
1)
add-tr
;;
2)
del-tr
;;
3)
renew-tr
;;
4)
cek-tr
;;
x)
menu
;;
*)
echo " Please enter an correct number!!"
;;
esac