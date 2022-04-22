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
echo -e " ${BGBLUE}         ┃ PANEL VMESS WEBSOCKET ┃        ${NC}"
echo -e "${green} ══════════════════════════════════════════${NC}"
echo -e "$green (•1) $NC Create Vmess Websocket Account"
echo -e "$green (•2) $NC Delete Vmess Websocket Account"
echo -e "$green (•3) $NC Renew Vmess Account"
echo -e "$green (•4) $NC Check User Login Vmess"
echo -e ""
echo -e "$CYAN       >> Total   : $(grep -c -E "^###" "/etc/v2ray/config.json")${NC}"
echo -e "${green} ══════════════════════════════════════════${NC}"
echo -e " ${BGBLUE}        ┃ PANEL VLESS WEBSOCKET ┃         ${NC}"
echo -e "${green} ══════════════════════════════════════════${NC}"
echo -e "$green (•5) $NC Create Vless Websocket Account"
echo -e "$green (•6) $NC Deleting Vless Websocket Account"
echo -e "$green (•7) $NC Renew Vless Account"
echo -e "$green (•8) $NC Check User Login Vless"
echo -e ""
echo -e "$CYAN        >> Total   : $(grep -c -E "^###" "/etc/v2ray/vless.json")${NC}"
echo -e "${green} ══════════════════════════════════════════${NC}"
echo -e " ${BGBLUE}          ┃ PANEL XRAY  ┃                 ${NC}"
echo -e "${green} ══════════════════════════════════════════${NC}"
echo -e "$green (•9) $NC Create Xray VLess XTLS Account"
echo -e "$green (10) $NC Deleting Xray Vless XTLS Account"
echo -e "$green (11) $NC Renew Xray Vless XTLS Account"
echo -e ""
echo -e "$CYAN       >> Total   : $(grep -c -E "^###" "/etc/xray-mini/vless-direct.json")${NC}"
echo -e "${green} ══════════════════════════════════════════${NC}"
echo -e " ${BGBLUE}         x)   MENU                        ${NC}"
echo -e "${green} ══════════════════════════════════════════${NC}"
echo -e ""
read -p "   Select From Options [1-11 or x]: " menuvmess
echo -e ""
case $menuvmess in
1)
add-ws
;;
2)
del-ws
;;
3)
renew-ws
;;
4)
cek-ws
;;
5)
add-vless
;;
6)
del-vless
;;
7)
renew-vless
;;
8)
cek-vless
;;
9)
add-xray
;;
10)
del-xray
;;
11)
renew-xray
;;
x)
menu
;;
*)
echo " Please enter an correct number!!"
;;
esac