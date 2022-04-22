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
echo -e " ${BGBLUE}            ┃ SSR MENU ┃                  ${NC}"
echo -e "${green} ══════════════════════════════════════════${NC}"
echo -e "$green (•1) $NC Create ShadowsocksR Accounts"
echo -e "$green (•2) $NC Delete ShadowsocksR Accounts"
echo -e "$green (•3) $NC Renew ShadowsocksR Accounts"
echo -e "$green (•4) $NC Show Other SSR Menu"
echo -e ""
echo -e "${green} ══════════════════════════════════════════${NC}"
echo -e " ${BGBLUE}           ┃ SS MENU ┃                    ${NC}"
echo -e "${green} ══════════════════════════════════════════${NC}"
echo -e "$green (•4) $NC Create Shadowsocks Accounts"
echo -e "$green (•5) $NC Delete Shadowsocks Accounts"
echo -e "$green (•6) $NC Renew Shadowsocks Accounts"
echo -e "$green (•7) $NC Check User Login Shadowsocks"
echo -e ""
echo -e "${green} ══════════════════════════════════════════${NC}"
echo -e " ${BGBLUE}         x)   MENU                        ${NC}"
echo -e "${green} ══════════════════════════════════════════${NC}"
echo -e ""
read -p "   Select From Options [1-8 or x]: " menussr
echo -e ""
case $menussr in
1)
add-ssr
;;
2)
del-ssr
;;
3)
renew-ssr
;;
4)
ssr
;;
5)
add-ss
;;
6)
del-ss
;;
7)
renew-ss
;;
8)
cek-ss
;;
x)
menu
;;
*)
echo " Please enter an correct number!!"
;;
esac