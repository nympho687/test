#!/bin/bash
# Setup
RED='\033[0;31m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
WHITE='\033[0;37m'
GREEN='\033[0;32m'
PURPLE='\033[0;35m'
YELLOW='\033[0;33m'
BIRED='\033[1;91m'
BICYAN='\033[1;96m'
BIBLUE='\033[1;94m'
BIWHITE='\033[1;97m'
BIGREEN='\033[1;92m'
BIBLACK='\033[1;90m'
BIYELLOW='\033[1;93m'
BIPURPLE='\033[1;95m'
NC='\033[0;37m'
RESET='\033[0m'
# ==================

# Root Check
if [ "${EUID}" -ne 0 ]; then
    echo "You need to run this script as root"
    exit 1
fi

apt update && apt upgrade -y && apt install curl -y && apt install figlet -y && sysctl -w net.ipv6.conf.all.disable_ipv6=1 && sysctl -w net.ipv6.conf.default.disable_ipv6=1
clear

if [ -f /etc/issue grep -Eqi "debian" ]; then
    echo "Installing Lolcat For Debian OS"
    sleep 0.5
    apt-get install ruby
    wget https://github.com/busyloop/lolcat/archive/master.zip
    unzip master.zip
    cd lolcat-master/bin
    gem install lolcat
elif cat /etc/issue | grep -Eqi "ubuntu"; then
    echo "Installing Lolcat For Ubuntu OS"
    sleep 0.5
    apt-get install lolcat -y
fi

echo ''
clear
echo ''
echo -e " $BIWHITE                                                            "
echo -e "              ------------------------------------------------------ "
echo -e "              |    ____  ____    ____  _____  ____  ____  _____    | "
echo -e "              |   /_   \/  _ \  / ___\/__ __\/  _ \/  __\/  __/    | "
echo -e "              |    /   /| / \|  |    \  / \  | / \||  \/||  \      | "
echo -e "              |   /   /_| \_\|  \___ |  | |  | \_/||    /|  /_     | "
echo -e "              |   \____/\____\  \____/  \_/   \____/\_/\_\\____\    | "
echo -e "              |----------------------------------------------------| "
echo -e "              |            AUTOSCRIPT VPN BY RK-PROXY              | "
echo -e "              |          TELEGRAM OWNER : t.me/rkproxy90           | "
echo -e "              |       TELEGRAM CHANNEL : t.me/rkgeneration2050     | "
echo -e "              | SHOPEE ZQ-STORE : shopee.com.my/ownerzquanstore90  | "
echo -e "              |----------------------------------------------------| $RESET"
echo -e "                             Sila Tunggu 5 Saat !!!!                 "
sleep 5
clear
if [ "${EUID}" -ne 0 ]; then
    echo "You need to run this script as root"
    exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
    echo "OpenVZ is not supported"
    exit 1
fi
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=$(date +"%Y-%m-%d" -d "$dateFromServer")
#########################

BURIQ() {
    curl -sS https://raw.githubusercontent.com/nympho687/ip/main/access >/root/tmp
    data=($(cat /root/tmp | grep -E "^### " | awk '{print $2}'))
    for user in "${data[@]}"; do
        exp=($(grep -E "^### $user" "/root/tmp" | awk '{print $3}'))
        d1=($(date -d "$exp" +%s))
        d2=($(date -d "$biji" +%s))
        exp2=$(((d1 - d2) / 86400))
        if [[ "$exp2" -le "0" ]]; then
            echo $user >/etc/.$user.ini
        else
            rm -f /etc/.$user.ini >/dev/null 2>&1
        fi
    done
    rm -f /root/tmp
}

MYIP=$(curl -sS ipv4.icanhazip.com)
Name=$(curl -sS https://raw.githubusercontent.com/nympho687/ip/main/access | grep $MYIP | awk '{print $2}')
echo $Name >/usr/local/etc/.$Name.ini
CekOne=$(cat /usr/local/etc/.$Name.ini)

Bloman() {
    if [ -f "/etc/.$Name.ini" ]; then
        CekTwo=$(cat /etc/.$Name.ini)
        if [ "$CekOne" = "$CekTwo" ]; then
            res="Expired"
        fi
    else
        res="Permission Accepted..."
    fi
}

PERMISSION() {
    MYIP=$(curl -sS ipv4.icanhazip.com)
    IZIN=$(curl -sS https://raw.githubusercontent.com/nympho687/ip/main/access | awk '{print $4}' | grep $MYIP)
    if [ "$MYIP" = "$IZIN" ]; then
        Bloman
    else
        res="Permission Denied!"
    fi
    BURIQ
}
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
BOLD='\e[1m'
BLINK='\e[5m'
END='\e[0m'
RED_B='\e[1;91m'
GREEN_B='\e[1;92m'
YELLOW_B='\e[1;93m'
BLUE_B='\e[1;94m'
PURPLE_B='\e[1;95m'
CYAN_B='\e[1;96m'
WHITE_B='\e[1;97m'
RESET='\e[0m'
red() { echo -e "${RED_B}${1}${RESET}"; }
green() { echo -e "${GREEN_B}${1}${RESET}"; }
yellow() { echo -e "${YELLOW_B}${1}${RESET}"; }
blue() { echo -e "${BLUE_B}${1}${RESET}"; }
purple() { echo -e "${PURPLE_B}${1}${RESET}"; }
cyan() { echo -e "${CYAN_B}${1}${RESET}"; }
white() { echo -e "${BIWHITE_B}${1}${RESET}"; }
PERMISSION

if [ -f /home/needupdate ]; then
    red "Your script need to update first !"
    exit 0
elif [ "$res" = "Permission Accepted..." ]; then
    green "TAHNIAH ANDA TELAH DI BENARKAN UNTUK GUNA SCRIPT VPN RK-PROXY "
    sleep 5
else
    clear
    red "    ANDA TIDAK DI BENARKAN GUNA SCRIPT INI ! "
    red "    SILA CONTACT OWNER UNTUK PERMISSION      "
    red "     TELEGRAM OWNER : t.me/rkproxy90 "
    sleep 10
    exit 0
fi
echo '============================================='
echo '          Sila Tunggu sebentar '
echo 'Process Update & Upgrade Sedang Dijalankan '
echo '============================================='
sleep 2
apt update && apt upgrade -y
clear
echo '============================================='
echo '      Process Update&Upgrade Selesai '
echo '============================================='
sleep 2
clear
echo '============================================='
echo '        Process Seterusnya Sila Tunggu '
echo '============================================='
clear
if [ -f "/etc/v2ray/domain" ]; then
    echo "Script Already Installed"
    exit 0
fi
mkdir /etc/rkproxy90
touch /etc/rkproxy90/ssh_account
mkdir /etc/v2ray
mkdir /etc/xray
mkdir /var/lib/premium-script
touch /etc/v2ray/domain
echo "IP=$host" >>/var/lib/premium-script/ipvps.conf
echo "$host" >>/etc/v2ray/domain
echo "$host" >>/root/domain
echo "V3.0" >>/home/version
wget https://raw.githubusercontent.com/nympho687/test/main/cf.sh && chmod +x cf.sh && ./cf.sh
echo '============================================='
echo '        Installing SSH & OPENVPN '
echo '============================================='
wget https://raw.githubusercontent.com/nympho687/test/main/ssh-vpn.sh && chmod +x ssh-vpn.sh && screen -S ssh-vpn ./ssh-vpn.sh
echo '============================================='
echo '        Installing SSTP '
echo '============================================='
wget https://raw.githubusercontent.com/nympho687/test/main/sstp.sh && chmod +x sstp.sh && screen -S sstp ./sstp.sh
echo '============================================='
echo '        Installing ssr '
echo '============================================='
wget https://raw.githubusercontent.com/nympho687/test/main/ssr.sh && chmod +x ssr.sh && screen -S ssr ./ssr.sh
echo '============================================='
echo '        Installing shadowsocksobfs '
echo '============================================='
wget https://raw.githubusercontent.com/nympho687/test/main/sodosok.sh && chmod +x sodosok.sh && screen -S ss ./sodosok.sh
echo '============================================='
echo '        Installing WIREGUARD '
echo '============================================='
wget https://raw.githubusercontent.com/nympho687/test/main/wg.sh && chmod +x wg.sh && screen -S wg ./wg.sh
echo '============================================='
echo '        Installing V2RAY '
echo '============================================='
wget https://raw.githubusercontent.com/nympho687/test/main/ins-vt.sh && chmod +x ins-vt.sh && screen -S v2ray ./ins-vt.sh
echo '============================================='
echo '        Installing ipsec '
echo '============================================='
wget https://raw.githubusercontent.com/nympho687/test/main/ipsec.sh && chmod +x ipsec.sh && screen -S ipsec ./ipsec.sh
echo '        Installing XRAY '
echo '============================================='
wget https://raw.githubusercontent.com/nympho687/test/main/install-xray.sh && chmod +x install-xray.sh && screen -S v2ray ./install-xray.sh
echo '============================================='
echo '        Installing Websocket '
echo '============================================='
wget https://raw.githubusercontent.com/nympho687/test/main/set-br.sh && chmod +x set-br.sh && ./set-br.sh
#OHP
wget https://raw.githubusercontent.com/tandekm/cf/main/ohp.sh && chmod +x ohp.sh && ./ohp.sh

rm -f /root/ssh-vpn.sh
rm -f /root/sstp.sh
rm -f /root/wg.sh
rm -f /root/ss.sh
rm -f /root/ssr.sh
rm -f /root/ins-vt.sh
rm -f /root/install-xray.sh
rm -f /root/ipsec.sh
rm -f /root/set-br.sh
rm -f /root/ohp.sh
echo "1.2" >/home/ver

echo "echo '              AutoScript By RK-PROXY             '" >>.profile
echo "echo '              TELEGRAM : @rkproxy90            '" >>.profile
echo "echo ''" >>.profile
echo "echo '       Sila Type: 'menu', untuk ke menu utama      '" >>.profile
echo "echo ''" >>.profile
clear
echo " "
echo '============================================='
echo "       Installation has been completed!!"
echo '============================================='
sleep 3
echo " "
echo "=================================-Autoscript Premium-===========================" | tee -a log-install.txt
echo "" | tee -a log-install.txt
echo "--------------------------------------------------------------------------------" | tee -a log-install.txt
echo "" | tee -a log-install.txt
echo "   >>> Service & Port" | tee -a log-install.txt
echo "   - OpenSSH                 : 22" | tee -a log-install.txt
echo "   - OpenVPN                 : TCP 1194, UDP 2200, SSL 442, OHP 8087" | tee -a log-install.txt
echo "   - Stunnel4                : 443, 777" | tee -a log-install.txt
echo "   - Dropbear                : 109, 143" | tee -a log-install.txt
echo "   - Squid Proxy             : 3128, 8080 (limit to IP Server)" | tee -a log-install.txt
echo "   - Badvpn                  : 7100, 7200, 7300" | tee -a log-install.txt
echo "   - Nginx                   : 81" | tee -a log-install.txt
echo "   - Wireguard               : 7070" | tee -a log-install.txt
echo "   - L2TP/IPSEC VPN          : 1701" | tee -a log-install.txt
echo "   - PPTP VPN                : 1732" | tee -a log-install.txt
echo "   - SSTP VPN                : 444" | tee -a log-install.txt
echo "   - Shadowsocks-R           : 1443-1543" | tee -a log-install.txt
echo "   - SS-OBFS TLS             : 2443-2543" | tee -a log-install.txt
echo "   - SS-OBFS HTTP            : 3443-3543" | tee -a log-install.txt
echo "   - V2RAY Vmess TLS         : 8443" | tee -a log-install.txt
echo "   - V2RAY Vmess None TLS    : 80" | tee -a log-install.txt
echo "   - V2RAY Vless TLS         : 2083" | tee -a log-install.txt
echo "   - V2RAY Vless None TLS    : 8880" | tee -a log-install.txt
echo "   - XRAY DIRECT             : 6769" | tee -a log-install.txt
echo "   - XRAY SPLICE             : 6769" | tee -a log-install.txt
echo "   - Trojan                  : 2087" | tee -a log-install.txt
echo "" | tee -a log-install.txt
echo "   >>> Server Information & Other Features" | tee -a log-install.txt
echo "   - Timezone                : Asia/Malaysia (UTC +8)" | tee -a log-install.txt
echo "   - Fail2Ban                : [ON]" | tee -a log-install.txt
echo "   - Dflate                  : [ON]" | tee -a log-install.txt
echo "   - IPtables                : [ON]" | tee -a log-install.txt
echo "   - Auto-Reboot             : [ON]" | tee -a log-install.txt
echo "   - IPv6                    : [OFF]" | tee -a log-install.txt
echo "   - Autoreboot On 05.00 UTC +8" | tee -a log-install.txt
echo "   - Autobackup Data" | tee -a log-install.txt
echo "   - Restore Data" | tee -a log-install.txt
echo "   - Auto Delete Expired Account" | tee -a log-install.txt
echo "   - Full Orders For Various Services" | tee -a log-install.txt
echo "   - White Label" | tee -a log-install.txt
echo "   - Installation Log --> /root/log-install.txt" | tee -a log-install.txt
echo "" | tee -a log-install.txt
echo ""
echo "   - DEV TELEGRAM            : @rkproxy" | tee -a log-install.txt
echo "   - Whatsapp                : +60133540391" | tee -a log-install.txt
echo ""
echo "------------------ Script Created By RK-PROXY ---------------------" | tee -a log-install.txt

sleep 3
echo '============================================='
echo '      SISTEM AKAN REBOOT SEBENTAR LAGI'
echo '============================================='
echo ""
rm -f /root/setup.sh
rm -f /root/.bash_history
echo " Reboot 15 Sec, Setelah ON type menu"
sleep 15
reboot
