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
echo -e " ${BGBLUE}          ┃ PANEL PPTP  ┃                 ${NC}"
echo -e "${green} ══════════════════════════════════════════${NC}"
echo -e "$green (•1) $NC Create Account PPTP\e[0m"
echo -e "$green (•2) $NC Delete PPTP Account\e[0m"
echo -e "$green (•3) $NC Extending PPTP Account Active Life\e[0m"
echo -e "$green (•4) $NC Check User Login PPTP\e[0m"
echo -e ""
echo -e "${green} ══════════════════════════════════════════${NC}"
echo -e " ${BGBLUE}          ┃ PANEL L2TP  ┃                 ${NC}"
echo -e "${green} ══════════════════════════════════════════${NC}"
echo -e "$green (•5) $NC Creating L2TP Account\e[0m"
echo -e "$green (•6) $NC Deleting L2TP Account\e[0m"
echo -e "$green (•7) $NC Extending L2TP Account Active Life\e[0m"
echo -e ""
echo -e "${green} ══════════════════════════════════════════${NC}"
echo -e " ${BGBLUE}          ┃ PANEL SSTP  ┃                 ${NC}"
echo -e "${green} ══════════════════════════════════════════${NC}"
echo -e "$green (•8) $NC Create Account SSTP\e[0m\e[0m"
echo -e "$green (•9) $NC Delete SSTP Account\e[0m\e[0m"
echo -e "$green (10) $NC Extending SSTP Account Active Life\e[0m"
echo -e "$green (11) $NC Check User Login SSTP\e[0m"
echo -e ""
echo -e "${green} ══════════════════════════════════════════${NC}"
echo -e " ${BGBLUE}         x)   MENU                        ${NC}"
echo -e "${green} ══════════════════════════════════════════${NC}"
echo -e ""
read -p "    Select From Options [1-11 or x]: " menupptp
echo -e ""
case $menupptp in
1)
add-pptp
;;
2)
del-pptp
;;
3)
renew-pptp
;;
4)
cek-pptp
;;
5)
add-l2tp
;;
6)
del-l2tp
;;
7)
renew-l2tp
;;
8)
add-sstp
;;
9)
del-sstp
;;
10)
renew-sstp
;;
11)
cek-sstp
;;
x)
menu
;;
*)
echo " Please enter an correct number!!"
;;
esac