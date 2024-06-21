#!/bin/bash
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
MYIP=$(wget -qO- ifconfig.me)
colornow=$(cat /etc/rmbl/theme/color.conf)
export NC="\e[0m"
export yl='\033[0;33m';
export RED="\033[0;31m"
export COLOR1="$(cat /etc/rmbl/theme/$colornow | grep -w "TEXT" | cut -d: -f2|sed 's/ //g')"
export COLBG1="$(cat /etc/rmbl/theme/$colornow | grep -w "BG" | cut -d: -f2|sed 's/ //g')"
WH='\033[1;37m'
tram=$( free -h | awk 'NR==2 {print $2}' )
uram=$( free -h | awk 'NR==2 {print $3}' )
ISP=$(cat /etc/xray/isp)
CITY=$(cat /etc/xray/city)
author=$(cat /etc/profil)
DAY=$(date +%A)
DATE=$(date +%m/%d/%Y)
DATE2=$(date -R | cut -d " " -f -5)
MYIP=$(wget -qO- ifconfig.me)
Isadmin=$(curl -sS https://raw.githubusercontent.com/AngIMAN/izin_jual/main/ip | grep $MYIP | awk '{print $5}')
Exp2=$(curl -sS https://raw.githubusercontent.com/AngIMAN/izin_jual/main/ip | grep $MYIP | awk '{print $3}')
export RED='\033[0;31m'
export GREEN='\033[0;32m'
Name=$(curl -sS https://raw.githubusercontent.com/AngIMAN/izin_jual/main/ip | grep $MYIP | awk '{print $2}')
ipsaya=$(wget -qO- ifconfig.me)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
data_ip="https://raw.githubusercontent.com/AngIMAN/izin_jual/main/ip"
checking_sc() {
useexp=$(curl -sS $data_ip | grep $ipsaya | awk '{print $3}')
if [[ $date_list < $useexp ]]; then
echo -ne
else
systemctl stop nginx
echo -e "$COLOR1╭═════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│${NC}          ${WH}• AUTOSCRIPT PREMIUM •                 ${NC}$COLOR1│ $NC"
echo -e "$COLOR1╰═════════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│            ${RED}PERMISSION DENIED !${NC}                  $COLOR1│"
echo -e "$COLOR1│   ${yl}Your VPS${NC} $ipsaya \033[0;36mHas been Banned ${NC}      $COLOR1│"
echo -e "$COLOR1│     ${yl}Buy access permissions for scripts${NC}          $COLOR1│"
echo -e "$COLOR1│             \033[0;32mContact Your Admin ${NC}                 $COLOR1│"
echo -e "$COLOR1╰═════════════════════════════════════════════════╯${NC}"
fi
}
madmin=$(curl -sS https://raw.githubusercontent.com/AngIMAN/izin_jual/main/ip | grep $MYIP | awk '{print $5}')
checking_sc
cd
if [ ! -e /etc/per/id ]; then
mkdir -p /etc/per
echo "" > /etc/per/id
echo "" > /etc/per/token
elif [ ! -e /etc/perlogin/id ]; then
mkdir -p /etc/perlogin
echo "" > /etc/perlogin/id
echo "" > /etc/perlogin/token
elif [ ! -e /usr/bin/id ]; then
echo "" > /usr/bin/idchat
echo "" > /usr/bin/token
fi
if [ ! -e /etc/xray/ssh ]; then
echo "" > /etc/xray/ssh
elif [ ! -e /etc/xray/sshx ]; then
mkdir -p /etc/xray/sshx
elif [ ! -e /etc/xray/sshx/listlock ]; then
echo "" > /etc/xray/sshx/listlock
elif [ ! -e /etc/vmess ]; then
mkdir -p /etc/vmess
elif [ ! -e /etc/vmess/listlock ]; then
echo "" > /etc/vmess/listlock
elif [ ! -e /etc/vless ]; then
mkdir -p /etc/vless
elif [ ! -e /etc/vless/listlock ]; then
echo "" > /etc/vless/listlock
elif [ ! -e /etc/trojan ]; then
mkdir -p /etc/trojan
elif [ ! -e /etc/trojan/listlock ]; then
echo "" > /etc/trojan/listlock
elif [ ! -e /etc/xray/noob ]; then
echo "" > /etc/xray/noob
elif [ ! -e /etc/trojan-go/trgo ]; then
echo "" > /etc/trojan-go/trgo
fi
clear
MODEL2=$(cat /etc/os-release | grep -w PRETTY_NAME | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/PRETTY_NAME//g')
LOADCPU=$(printf '%-0.00001s' "$(top -bn1 | awk '/Cpu/ { cpu = "" 100 - $8 "%" }; END { print cpu }')")
CORE=$(printf '%-1s' "$(grep -c cpu[0-9] /proc/stat)")
cpu_usage1="$(ps aux | awk 'BEGIN {sum=0} {sum+=$3}; END {print sum}')"
cpu_usage="$((${cpu_usage1/\.*} / ${corediilik:-1}))"
cpu_usage+=" %"
d1=$(date -d "$Exp2" +%s)
d2=$(date -d "$today" +%s)
certificate=$(( (d1 - d2) / 86400 ))
vnstat_profile=$(vnstat | sed -n '3p' | awk '{print $1}' | grep -o '[^:]*')
vnstat -i ${vnstat_profile} >/etc/t1
bulan=$(date +%b)
tahun=$(date +%y)
ba=$(curl -s https://pastebin.com/raw/0gWiX6hE)
today=$(vnstat -i ${vnstat_profile} | grep today | awk '{print $8}')
todayd=$(vnstat -i ${vnstat_profile} | grep today | awk '{print $8}')
today_v=$(vnstat -i ${vnstat_profile} | grep today | awk '{print $9}')
today_rx=$(vnstat -i ${vnstat_profile} | grep today | awk '{print $2}')
today_rxv=$(vnstat -i ${vnstat_profile} | grep today | awk '{print $3}')
today_tx=$(vnstat -i ${vnstat_profile} | grep today | awk '{print $5}')
today_txv=$(vnstat -i ${vnstat_profile} | grep today | awk '{print $6}')
if [ "$(grep -wc ${bulan} /etc/t1)" != '0' ]; then
bulan=$(date +%b)
month=$(vnstat -i ${vnstat_profile} | grep "$bulan $ba$tahun" | awk '{print $9}')
month_v=$(vnstat -i ${vnstat_profile} | grep "$bulan $ba$tahun" | awk '{print $10}')
month_rx=$(vnstat -i ${vnstat_profile} | grep "$bulan $ba$tahun" | awk '{print $3}')
month_rxv=$(vnstat -i ${vnstat_profile} | grep "$bulan $ba$tahun" | awk '{print $4}')
month_tx=$(vnstat -i ${vnstat_profile} | grep "$bulan $ba$tahun" | awk '{print $6}')
month_txv=$(vnstat -i ${vnstat_profile} | grep "$bulan $ba$tahun" | awk '{print $7}')
else
bulan2=$(date +%Y-%m)
month=$(vnstat -i ${vnstat_profile} | grep "$bulan2 " | awk '{print $8}')
month_v=$(vnstat -i ${vnstat_profile} | grep "$bulan2 " | awk '{print $9}')
month_rx=$(vnstat -i ${vnstat_profile} | grep "$bulan2 " | awk '{print $2}')
month_rxv=$(vnstat -i ${vnstat_profile} | grep "$bulan2 " | awk '{print $3}')
month_tx=$(vnstat -i ${vnstat_profile} | grep "$bulan2 " | awk '{print $5}')
month_txv=$(vnstat -i ${vnstat_profile} | grep "$bulan2 " | awk '{print $6}')
fi
if [ "$(grep -wc yesterday /etc/t1)" != '0' ]; then
yesterday=$(vnstat -i ${vnstat_profile} | grep yesterday | awk '{print $8}')
yesterday_v=$(vnstat -i ${vnstat_profile} | grep yesterday | awk '{print $9}')
yesterday_rx=$(vnstat -i ${vnstat_profile} | grep yesterday | awk '{print $2}')
yesterday_rxv=$(vnstat -i ${vnstat_profile} | grep yesterday | awk '{print $3}')
yesterday_tx=$(vnstat -i ${vnstat_profile} | grep yesterday | awk '{print $5}')
yesterday_txv=$(vnstat -i ${vnstat_profile} | grep yesterday | awk '{print $6}')
else
yesterday=NULL
yesterday_v=NULL
yesterday_rx=NULL
yesterday_rxv=NULL
yesterday_tx=NULL
yesterday_txv=NULL
fi
Green_font_prefix="\033[32m" && Red_font_prefix="\033[31m" && Green_background_prefix="\033[42;37m" && Red_background_prefix="\033[4$below" && Font_color_suffix="\033[0m"
ssh_ws=$( systemctl status ws-stunnel | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $ssh_ws == "running" ]]; then
status_ws="${Green_font_prefix}ON${NC}"
else
status_ws="${RED}OFF${NC}"
fi
nginx=$( systemctl status nginx | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $nginx == "running" ]]; then
status_nginx="${Green_font_prefix}ON${NC}"
else
status_nginx="${Red_font_prefix}OFF${NC}"
systemctl start nginx
fi
if [[ -e /usr/bin/kyt ]]; then
nginx=$( systemctl status kyt | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $nginx == "running" ]]; then
echo -ne
else
systemctl start kyt
fi
fi
rm -rf /etc/status
xray=$(systemctl status xray | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
if [[ $xray == "running" ]]; then
status_xray="${Green_font_prefix}ON${NC}"
else
status_xray="${Red_font_prefix}OFF${NC}"
fi

stat_noobz=$( systemctl status noobzvpns | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $stat_noobz == "running" ]]; then
    stat_noobz="${Green_font_prefix}ON${NC}"
else
    stat_noobz="${Red_font_prefix}OFF${NC}"
    systemctl start noobzvpns
fi

# // Dropbear
dropbear_status=$(/etc/init.d/dropbear status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
if [[ $dropbear_status == "running" ]]; then
   status_beruangjatuh="${Green_font_prefix}ON${NC}"
else
   status_beruangjatuh="${Red_font_prefix}OFF${NC}"
fi

udp_custom=$( systemctl status udp-custom | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $udp_custom == "running" ]]; then
    status_udp="${Green_font_prefix}ON${NC}"
else
    status_udp="${Red_font_prefix}OFF${NC}"
    systemctl start udp-custom
fi

stat_trgo=$( systemctl status trojan-go | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $stat_trgo == "running" ]]; then
    stat_trgo="${Green_font_prefix}ON${NC}"
else
    stat_trgo="${Red_font_prefix}OFF${NC}"
    systemctl start trojan-go
fi



# STATUS EXPIRED ACTIVE
Green_font_prefix="\033[32m" && Red_font_prefix="\033[31m" && Green_background_prefix="\033[42;37m" && Red_background_prefix="\033[4$below" && Font_color_suffix="\033[0m"
Info="${Green_font_prefix}Active${Font_color_suffix}"
Error="${Green_font_prefix}${Font_color_suffix}${Red_font_prefix}[EXPIRED]${Font_color_suffix}"

today=$(date -d "0 days" +"%Y-%m-%d")
if [[ $today < $Exp2 ]]; then
    sts="${Info}"
else
    sts="${Error}"
fi
# TOTAL CREATE ACC VMESS
vmess=$(grep -c -E "^#vmg " "/etc/xray/config.json")
# TOTAL CREATE ACC VLESS
vless=$(grep -c -E "^#vlg " "/etc/xray/config.json")
# TOTAL CREATE ACC TROJAN
trtls=$(grep -c -E "^#trg " "/etc/xray/config.json")
# TOTAL CREATE ACC SSH
total_ssh=$(grep -c -E "^### " "/etc/xray/ssh")
# TOTAL CREATE ACC NOOBZ
jumlah_noobz=$(grep -c -E "^### " "/etc/xray/noob")
# TOTAL CREATE ACC TROJAN-GO
jumlah_trgo=$(grep -c -E "^### " "/etc/trojan-go/trgo")
function m-ip2(){
clear
cd
if [[ -e /etc/github/api ]]; then
m-ip
else
mkdir /etc/github
echo "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" > /etc/github/api
echo "imanfals51@gmail.com" > /etc/github/email
echo "AngIMAN" > /etc/github/username
m-ip
fi
}
uphours=`uptime -p | awk '{print $2,$3}' | cut -d , -f1`
upminutes=`uptime -p | awk '{print $4,$5}' | cut -d , -f1`
uptimecek=`uptime -p | awk '{print $6,$7}' | cut -d , -f1`
cekup=`uptime -p | grep -ow "day"`
if [ "$Isadmin" = "ON" ]; then
uis="${COLOR1}Premium ADMIN VIP$NC"
else
uis="${COLOR1}Premium Version$NC"
fi
function m-bot2(){
clear
echo -e "$COLOR1╭══════════════════════════════════════════╮${NC}"
echo -e "$COLOR1  ${WH}Please select a Bot type below                 ${NC}"
echo -e "$COLOR1╰══════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭══════════════════════════════════════════╮${NC}"
echo -e "$COLOR1  [ 1 ] ${WH}Buat/Edit BOT INFO Multi Login SSH, XRAY & TRANSAKSI   ${NC}"
echo -e "$COLOR1  [ 2 ] ${WH}Buat/Edit BOT INFO Create User & Lain Lain    ${NC}"
echo -e ""
echo -e "$COLOR1  [ 3 ] ${WH}Buat/Edit BOT INFO Backup Telegram    ${NC}"
echo -e "$COLOR1╰══════════════════════════════════════════╯${NC}"
read -p "   Please select numbers 1-3 or Any Button(Random) to exit : " bot
echo ""
if [[ $bot == "1" ]]; then
clear
rm -rf /etc/perlogin
mkdir -p /etc/perlogin
cd /etc/perlogin
touch token
touch id
echo -e ""
echo -e "$COLOR1 [ INFO ] ${WH}Create for database Multi Login"
read -rp "Enter Token (Creat on @BotFather) : " -e token2
echo "$token2" > token
read -rp "Enter Your Id (Creat on @userinfobot)  : " -e idat
echo "$idat" > id
sleep 1
m-bot2
fi
if [[ $bot == "2" ]]; then
clear
rm -rf /etc/per
mkdir -p /etc/per
cd /etc/per
touch token
touch id
echo -e ""
echo -e "$COLOR1 [ INFO ] ${WH}Create for database Akun Dan Lain Lain"
read -rp "Enter Token (Creat on @BotFather) : " -e token3
echo "$token3" > token
read -rp "Enter Your Id (Creat on @userinfobot)  : " -e idat2
echo "$idat2" > id
sleep 1
m-bot2
fi
if [[ $bot == "3" ]]; then
clear
rm -rf /usr/bin/token
rm -rf /usr/bin/idchat
echo -e ""
echo -e "$COLOR1 [ INFO ] ${WH}Create for database Backup Telegram"
read -rp "Enter Token (Creat on @BotFather) : " -e token23
echo "$token23" > /usr/bin/token
read -rp "Enter Your Id (Creat on @userinfobot)  : " -e idchat
echo "$idchat" > /usr/bin/idchat
sleep 1
m-bot2
fi
menu
}
clear
clear && clear && clear
clear;clear;clear
echo -e " $COLOR1╭═════════════════════════════════════════════════════════╮${NC}"
echo -e " $COLOR1│ ${Green_font_prefix}               • SCRIPT BY VPN EXPRESS •               ${NC} $COLOR1│$NC"
echo -e " $COLOR1╰═════════════════════════════════════════════════════════╯${NC}"
echo -e " $COLOR1   ═════════════════════════════════════════════════════${NC}"
echo -e " $COLOR1  $NC${WH} 🩷 OS          ${COLOR1}: ${WH}$MODEL2${NC}"
echo -e " $COLOR1  $NC${WH} ❤️ RAM         ${COLOR1}: ${WH}$tram / $uram ${NC}"
echo -e " $COLOR1  $NC${WH} 🧡 DATE        ${COLOR1}: ${WH}$DATE2 WIB${NC}"
#echo -e " $COLOR1  $NC${WH}  UPTIME      ${COLOR1}: ${WH}$uphours $upminutes $uptimecek"
#echo -e " $COLOR1  $NC${WH}  TIME        ${COLOR1}: ${WH}$TIMEZONE${NC}"
echo -e " $COLOR1  $NC${WH} 💛 ISP         ${COLOR1}: ${WH}$ISP${NC}"
echo -e " $COLOR1  $NC${WH} 💚 CPU         ${COLOR1}: ${WH}$cpu_usage${NC}"
echo -e " $COLOR1  $NC${WH} 🩵 City        ${COLOR1}: ${WH}$CITY${NC}"
echo -e " $COLOR1  $NC${WH} 🤍 IP VPS      ${COLOR1}: ${WH}$MYIP${NC}"
echo -e " $COLOR1  $NC${WH} 💛 DOMAIN      ${COLOR1}: ${WH}$(cat /etc/xray/domain)"
echo -e " $COLOR1  $NC${WH} 🧡 NSDomain    ${COLOR1}: ${WH}$(cat /etc/xray/dns)"
echo -e " $COLOR1  $NC${WH} ❤️ Bandwidth   ${COLOR1}: ${WH}Hari= ${WH}$today_tx $today_txv, Bulanini = ${green}$month_tx $month_txv$COLOR1${NC}"
echo -e " $COLOR1  $NC${WH} 🩷 Masa Aktif  ${COLOR1}: ${WH}$certificate Hari [$Exp2] $sts ${NC}$COLOR1" 
echo -e " $COLOR1   ═════════════════════════════════════════════════════${NC}"
echo -e " $COLOR1╭═════════════════════════════════════════════════════════╮${NC}"
echo -e " $COLOR1│ ${WH}               Name  :  • $author •         $NC"
echo -e " $COLOR1╰═════════════════════════════════════════════════════════╯${NC}"
echo -e "    $COLOR1                              ${NC}"
echo -e "     ${WH} SSH WS : ${status_ws} ${WH} XRAY : ${status_xray} ${WH} NGINX : ${status_nginx} ${WH} DROPBEAR : ${status_beruangjatuh}$NC"
echo -e "      ${WH} UDP CUSTOM : ${status_udp} ${WH} NOOBZVPNS : ${stat_noobz} ${WH} TROJAN-GO : ${stat_trgo} ${NC}"
echo -e "    $COLOR1╰═══════════════════════════════════════════════════╯${NC}"
echo -e " $COLOR1╭═════════════════════ •{${WH}LIST MENU${NC}${COLOR1}}• ═════════════════════╮${NC}"
echo -e " $COLOR1│$NC ${WH}[${COLOR1}01${WH}]${NC} ${COLOR1}• ${WH}SSH-WS    ${WH}[${COLOR1}Menu${WH}] ($total_ssh) ${NC}$COLOR1│${NC}  ${WH}[${COLOR1}07${WH}]${NC} ${COLOR1}• ${WH}BOT PANEL  ${WH}[${COLOR1}Menu${WH}] $COLOR1│${NC}"
echo -e " $COLOR1│$NC ${WH}[${COLOR1}02${WH}]${NC} ${COLOR1}• ${WH}VMESS     ${WH}[${COLOR1}Menu${WH}] ($vmess) ${NC}$COLOR1│${NC}  ${WH}[${COLOR1}08${WH}]${NC} ${COLOR1}• ${WH}BOT NOTIF  ${WH}[${COLOR1}Menu${WH}] $COLOR1│${NC}"    
echo -e " $COLOR1│$NC ${WH}[${COLOR1}03${WH}]${NC} ${COLOR1}• ${WH}VLESS     ${WH}[${COLOR1}Menu${WH}] ($vless) ${NC}$COLOR1│${NC}  ${WH}[${COLOR1}09${WH}]${NC} ${COLOR1}• ${WH}UPDATE     ${WH}[${COLOR1}Menu${WH}] $COLOR1│${NC}"   
echo -e " $COLOR1│$NC ${WH}[${COLOR1}04${WH}]${NC} ${COLOR1}• ${WH}TROJAN    ${WH}[${COLOR1}Menu${WH}] ($trtls) ${NC}$COLOR1│${NC}  ${WH}[${COLOR1}10${WH}]${NC} ${COLOR1}• ${WH}SYSTEM     ${WH}[${COLOR1}Menu${WH}] $COLOR1│${NC}" 
echo -e " $COLOR1│$NC ${WH}[${COLOR1}05${WH}]${NC} ${COLOR1}• ${WH}NOOBZVPNS ${WH}[${COLOR1}Menu${WH}] ($jumlah_noobz) ${NC}$COLOR1│${NC}  ${WH}[${COLOR1}11${WH}]${NC} ${COLOR1}• ${WH}BACKUP     ${WH}[${COLOR1}Menu${WH}] $COLOR1│${NC}" 
echo -e " $COLOR1│$NC ${WH}[${COLOR1}06${WH}]${NC} ${COLOR1}• ${WH}TROJAN-GO ${WH}[${COLOR1}Menu${WH}] ($jumlah_trgo) ${NC}$COLOR1│${NC}  ${WH}[${COLOR1}12${WH}]${NC} ${COLOR1}• ${WH}REBOOT     ${WH}[${COLOR1}Menu${WH}] $COLOR1│${NC}" 
echo -e " $COLOR1│$NC ${WH}[${COLOR1}22${WH}]${NC} ${COLOR1}• ${WH}RUNNING   ${WH}[${COLOR1}Menu${WH}]  ${NC}   $COLOR1│${NC}  ${WH}[${COLOR1}23${WH}]${NC} ${COLOR1}• ${WH}RESTART    ${WH}[${COLOR1}Menu${WH}] $COLOR1│${NC}"
echo -e " $COLOR1╰═════════════════════════════════════════════════════════╯${NC}"
if [ "$Isadmin" = "ON" ]; then
echo -e "$COLOR1╭════════════════════ • ${WH}PANEL ADMIN VIP${NC}${COLOR1} • ════════════════╮${NC}"
echo -e "$COLOR1│  ${WH}[${COLOR1}13${WH}]${NC} ${COLOR1}• ${WH}RESELLER IP ${WH}[${COLOR1}MENU${WH}] $COLOR1 $NC"
ressee="m-ip2"
bottt="m-bot"
echo -e "$COLOR1╰═════════════════════════════════════════════════════════╯${NC}"
else
ressee="menu"
bottt="menu"
fi
DATE=$(date +'%Y-%m-%d')
datediff() {
d1=$(date -d "$1" +%s)
d2=$(date -d "$2" +%s)
echo -e "$COLOR1 $NC Expiry In   : $(( (d1 - d2) / 86400 )) Days"
}
function new(){
cat> /etc/cron.d/autocpu << END
SHELL=/bin/sh
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
*/3 * * * * root /usr/bin/autocpu
END
echo "Auto-Reboot CPU 100% TURN ON."
sleep 1
menu
}
function newx(){
clear
until [[ $usagee =~ ^[0-9]+$ ]]; do
read -p "kuota user format angka 1, 2 atau 3 (TERA): " usagee
done
echo "$usagee" > /etc/usagee
cat> /etc/cron.d/bantwidth << END
SHELL=/bin/sh
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
*/10 * * * * root /usr/bin/bantwidth
END
echo "Auto-Shutdown $usagee TERA TURN ON."
sleep 1
menu
}
d1=$(date -d "$Exp2" +%s)
d2=$(date -d "$today" +%s)
certificate=$(( (d1 - d2) / 86400 ))
domain=$(cat /etc/xray/domain)
function restartservice(){    
clear
fun_bar() {
    CMD[0]="$1"
    CMD[1]="$2"
    (
        [[ -e $HOME/fim ]] && rm $HOME/fim
        ${CMD[0]} -y >/dev/null 2>&1
        ${CMD[1]} -y >/dev/null 2>&1
        touch $HOME/fim
    ) >/dev/null 2>&1 &
    tput civis
    echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    while true; do
        for ((i = 0; i < 18; i++)); do
            echo -ne "\033[0;32m#"
            sleep 0.1s
        done
        [[ -e $HOME/fim ]] && rm $HOME/fim && break
        echo -e "\033[0;33m]"
        sleep 1s
        tput cuu1
        tput dl1
        echo -ne "  \033[0;33mPlease Wait Loading \033[1;37m- \033[0;33m["
    done
    echo -e "\033[0;33m]\033[1;37m -\033[1;32m OK !\033[1;37m"
    tput cnorm
}
res1() {
    systemctl restart nginx
    systemctl restart trojan-go
    systemctl restart xray
    systemctl restart noobzvpns
    systemctl restart daemon
    systemctl restart udp-custom
    systemctl restart ws-dropbear
    systemctl restart ws-stunnel
    systemctl restart openvpn
    systemctl restart cron
    systemctl restart netfilter-persistent
    systemctl restart squid
    systemctl restart badvpn1
    systemctl restart badvpn2
    systemctl restart badvpn3
    systemctl restart client
    systemctl restart server
}
clear
echo -e "$COLOR1 ╭══════════════════════════════════════════╮${NC}"
echo -e "$COLOR1 ${NC} ${COLBG2}          ${WH}RESTART SERVICE VPS             ${NC} $COLOR1 $NC"
echo -e "$COLOR1 ╰══════════════════════════════════════════╯${NC}"
echo -e ""
echo -e "  \033[1;91m Restart All Service... \033[1;37m"
fun_bar 'res1'

echo -e ""
read -n 1 -s -r -p "Press [ Enter ] to back on menu"
menu
}
function updatews(){
cd
rm -rf *
wget https://satantech.serv00.net/arthepat/menu/install-up.sh &> /dev/null
chmod +x install_up.sh
./install_up.sh
}
echo -e "$COLOR1╭═════════════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│$NC ${WH} ❈ Client ${NC} : ${WH}$author${NC}"
echo -e "$COLOR1│$NC ${WH} ❈ Durasi ${NC} : ${WH}$certificate Days${NC}$COLOR1"
echo -e "$COLOR1│$NC ${WH} ❈ Expiry ${NC} : ${WH}$Exp2 $sts ${NC}$COLOR1"
echo -e "$COLOR1╰═════════════════════════════════════════════════════════╯${NC}"
echo -e ""
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
colornow=$(cat /etc/rmbl/theme/color.conf)
NC="\e[0m"
RED="\033[0;31m"
COLOR1="$(cat /etc/rmbl/theme/$colornow | grep -w "TEXT" | cut -d: -f2|sed 's/ //g')"
COLBG1="$(cat /etc/rmbl/theme/$colornow | grep -w "BG" | cut -d: -f2|sed 's/ //g')"
WH='\033[1;37m'
ipsaya=$(wget -qO- ifconfig.me)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
data_ip="https://raw.githubusercontent.com/AngIMAN/izin_jual/main/ip"
checking_sc() {
useexp=$(curl -sS $data_ip | grep $ipsaya | awk '{print $3}')
if [[ $date_list < $useexp ]]; then
echo -ne
else
echo -e "$COLOR1╭═════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}          ${WH}• AUTOSCRIPT PREMIUM •               ${NC} $COLOR1 $NC"
echo -e "$COLOR1╰═════════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═════════════════════════════════════════════════╮${NC}"
echo -e "            ${RED}PERMISSION DENIED !${NC}"
echo -e "   \033[0;33mYour VPS${NC} $ipsaya \033[0;33mHas been Banned${NC}"
echo -e "     \033[0;33mBuy access permissions for scripts${NC}"
echo -e "             \033[0;33mContact Your Admin ${NC}"
echo -e "$COLOR1╰═════════════════════════════════════════════════╯${NC}"
exit
fi
}
checking_sc
#function ins-helium(){
#clear
#if [[ -e /usr/bin/helium ]]; then
#helium
#else
#echo -ne
#if [[ $(cat /etc/os-release | grep -w ID | head -n1 | sed 's/=//g' | sed 's/"//g' | sed 's/ID//g') == "ubuntu" ]]; then
#echo -e " OS UBUNTU GA BISA INSTALL MENU INI"
#read -n 1 -s -r -p "  Press any key to Back"
#menu
#else
#wget -q -O /usr/bin/helium "https://cdn.discordapp.com/attachments/1043809011474112566/1054014513428566016/helium.sh" && chmod +x /usr/bin/helium && helium
#fi
#fi
#}
function add-host(){
fun_bar() {
CMD[0]="$1"
CMD[1]="$2"
(
[[ -e $HOME/fim ]] && rm $HOME/fim
${CMD[0]} -y >/dev/null 2>&1
${CMD[1]} -y >/dev/null 2>&1
touch $HOME/fim
) >/dev/null 2>&1 &
tput civis
echo -ne "  \033[0;33mUodate Domain... \033[1;37m- \033[0;33m["
while true; do
for ((i = 0; i < 18; i++)); do
echo -ne "\033[0;32m#"
sleep 0.1s
done
[[ -e $HOME/fim ]] && rm $HOME/fim && break
echo -e "\033[0;33m]"
sleep 1s
tput cuu1
tput dl1
echo -ne "  \033[0;33mUpdate Domain... \033[1;37m- \033[0;33m["
done
echo -e "\033[0;33m]\033[1;37m -\033[1;32m Succes !\033[1;37m"
tput cnorm
}
sldns() {
wget https://raw.githubusercontent.com/AngIMAN/juall/main/slowdns/installsl.sh && chmod +x installsl.sh && ./installsl.sh
}
res1() {
wget https://raw.githubusercontent.com/AngIMAN/juall/main/slowdns/rmbl.sh && chmod +x rmbl.sh && ./rmbl.sh
clear
}
res2() {
wget https://raw.githubusercontent.com/AngIMAN/juall/main/slowdns/rmbl1.sh && chmod +x rmbl1.sh && ./rmbl1.sh
clear
}
res3() {
wget https://raw.githubusercontent.com/AngIMAN/juall/main/slowdns/rmbl2.sh && chmod +x rmbl2.sh && ./rmbl2.sh
clear
}
clear
echo -e "$COLOR1╭══════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│ ${WH}Please select a your Choice to Set Domain              ${NC}"
echo -e "$COLOR1╰══════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭══════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│  [ 1 ]  ${WH}Domain kamu Sendri    ${NC}"
echo -e "$COLOR1│  [ 2 ]  ${WH}Domain Yang Punya Script     ${NC}"
echo -e "$COLOR1╰══════════════════════════════════════════╯${NC}"
until [[ $dns =~ ^[0-9]+$ ]]; do
read -p "   Please select numbers 1-2 or Any Button(Random) : " dns
done
if [[ $dns == "1" ]]; then
clear
echo -e  "$COLOR1╭══════════════════════════════════════════╮${NC}"
echo -e  "$COLOR1│             ${WH}TERIMA KASIH                 $COLOR1│${NC}"
echo -e  "$COLOR1│        ${WH}SUDAH MENGGUNAKAN SCRIPT          $COLOR1│${NC}"
echo -e  "$COLOR1│               ${WH}DARI SAYA                  $COLOR1│${NC}"
echo -e  "$COLOR1╰══════════════════════════════════════════╯${NC}"
echo " "
until [[ $dnss =~ ^[a-zA-Z0-9_.-]+$ ]]; do
read -rp "Masukan domain kamu Disini : " -e dnss
done
echo ""
echo "$dnss" > /etc/xray/domain
echo "$dnss" > /etc/v2ray/domain
echo "IP=$dnss" > /var/lib/ipvps.conf
read -n 1 -s -r -p "  Press any key to Back Menu"
certv2ray
clear
elif [[ $dns == "2" ]]; then
clear
echo -e "$COLOR1╭══════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│ \033[1;37mPlease select a your Choice to Set Domain$COLOR1│${NC}"
echo -e "$COLOR1╰══════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭══════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│  [ 1 ]  \033[1;37mDomain xxx.tepllovpn.eu.org       ${NC}"
echo -e "$COLOR1╰══════════════════════════════════════════╯${NC}"
until [[ $domain2 =~ ^[1-2]+$ ]]; do
read -p "   Please select numbers : " domain2
done
if [[ $domain2 == "1" ]]; then
clear
echo -e  "$COLOR1╭══════════════════════════════════════════╮${NC}"
echo -e  "$COLOR1│  \033[1;37mContoh subdomain xxx.pirang.cloud       $COLOR1│${NC}"
echo -e  "$COLOR1│    \033[1;37mxxx jadi subdomain kamu               $COLOR1│${NC}"
echo -e  "$COLOR1╰══════════════════════════════════════════╯${NC}"
echo " "
until [[ $dn1 =~ ^[a-zA-Z0-9_.-]+$ ]]; do
read -rp "Masukan subdomain kamu Disini tanpa spasi : " -e dn1
done
echo "$dn1" > /etc/xray/domain
echo "$dn1" > /root/subdomainx
cd
sleep 1
fun_bar 'res1'
clear
rm -rf /root/subdomainx
certv2ray
clear
fi
if [[ $domain2 == "2" ]]; then
clear
echo -e  "$COLOR1╭══════════════════════════════════════════╮${NC}"
echo -e  "$COLOR1│  \033[1;37mContoh subdomain xxx.berurat.cloud      $COLOR1│${NC}"
echo -e  "$COLOR1│    \033[1;37mxxx jadi subdomain kamu               $COLOR1│${NC}"
echo -e  "$COLOR1╰══════════════════════════════════════════╯${NC}"
echo " "
until [[ $dn2 =~ ^[a-zA-Z0-9_.-]+$ ]]; do
read -rp "Masukan subdomain kamu Disini tanpa spasi : " -e dn2
done
echo "$dn2" > /etc/xray/domain
echo "$dn2" > /root/subdomainx
cd
sleep 1
fun_bar 'res2'
clear
rm -rf /root/subdomainx
fi
if [[ $domain2 == "3" ]]; then
clear
echo -e  "$COLOR1╭══════════════════════════════════════════╮${NC}"
echo -e  "$COLOR1│  \033[1;37mContoh subdomain xxx.xnxxms.cloud       $COLOR1│${NC}"
echo -e  "$COLOR1│    \033[1;37mxxx jadi subdomain kamu               $COLOR1│${NC}"
echo -e  "$COLOR1╰══════════════════════════════════════════╯${NC}"
echo " "
until [[ $dn3 =~ ^[a-zA-Z0-9_.-]+$ ]]; do
read -rp "Masukan subdomain kamu Disini tanpa spasi : " -e dn3
done
echo "$dn3" > /etc/xray/domain
echo "$dn3" > /root/subdomainx
cd
sleep 1
fun_bar 'res5'
clear
rm -rf /root/subdomainx
fi
if [[ $domain2 == "4" ]]; then
clear
echo -e  "$COLOR1╭══════════════════════════════════════════╮${NC}"
echo -e  "$COLOR1│  \033[1;37mContoh subdomain xxx.slowapp.dev        $COLOR1│${NC}"
echo -e  "$COLOR1│    \033[1;37mxxx jadi subdomain kamu               $COLOR1│${NC}"
echo -e  "$COLOR1╰══════════════════════════════════════════╯${NC}"
echo " "
until [[ $dn4 =~ ^[a-zA-Z0-9_.-]+$ ]]; do
read -rp "Masukan subdomain kamu Disini tanpa spasi : " -e dn4
done
echo "$dn4" > /etc/xray/domain
echo "$dn4" > /root/subdomainx
cd
sleep 1
fun_bar 'res4'
clear
rm -rf /root/subdomainx
fi
if [[ $domain2 == "5" ]]; then
clear
echo -e  "$COLOR1╭══════════════════════════════════════════╮${NC}"
echo -e  "$COLOR1│  \033[1;37mContoh subdomain xxx.vpnvip.tech        $COLOR1│${NC}"
echo -e  "$COLOR1│    \033[1;37mxxx jadi subdomain kamu               $COLOR1│${NC}"
echo -e  "$COLOR1╰══════════════════════════════════════════╯${NC}"
echo " "
until [[ $dn5 =~ ^[a-zA-Z0-9_.-]+$ ]]; do
read -rp "Masukan subdomain kamu Disini tanpa spasi : " -e dn5
done
echo "$dn5" > /etc/xray/domain
echo "$dn5" > /root/subdomainx
cd
sleep 1
fun_bar 'res3'
clear
rm -rf /root/subdomainx
fi
if [[ $domain2 == "6" ]]; then
clear
echo -e  "$COLOR1╭══════════════════════════════════════════╮${NC}"
echo -e  "$COLOR1│  \033[1;37mContoh subdomain xxx.slowvip.tech        $COLOR1│${NC}"
echo -e  "$COLOR1│    \033[1;37mxxx jadi subdomain kamu               $COLOR1│${NC}"
echo -e  "$COLOR1╰══════════════════════════════════════════╯${NC}"
echo " "
until [[ $dn6 =~ ^[a-zA-Z0-9_.-]+$ ]]; do
read -rp "Masukan subdomain kamu Disini tanpa spasi : " -e dn6
done
echo "$dn6" > /etc/xray/domain
echo "$dn6" > /root/subdomainx
cd
sleep 1
fun_bar 'res6'
clear
rm -rf /root/subdomainx
fi
read -n 1 -s -r -p "  Press any key to Renew Cert or Ctrl + C to Exit"
certv2ray
clear
elif [[ $dns == "3" ]]; then
clear
cd
sleep 1
fun_bar 'sldns'
read -n 1 -s -r -p "  Press any key to Back Menu"
menu
clear
elif [[ $dns == "4" ]]; then
clear
echo -e  "$COLOR1╭══════════════════════════════════════════╮${NC}"
echo -e  "$COLOR1│             ${WH}TERIMA KASIH                 $COLOR1│${NC}"
echo -e  "$COLOR1│        ${WH}SUDAH MENGGUNAKAN SCRIPT          $COLOR1│${NC}"
echo -e  "$COLOR1│               ${WH} VPN                   $COLOR1│${NC}"
echo -e  "$COLOR1╰══════════════════════════════════════════╯${NC}"
echo " "
until [[ $dns1 =~ ^[a-zA-Z0-9_.-]+$ ]]; do
read -rp "Masukan domain kamu Disini : " -e dns1
done
echo ""
echo "$dns1" > /etc/xray/domain
echo "$dns1" > /etc/v2ray/domain
echo "IP=$dns1" > /var/lib/ipvps.conf
clear
echo -e  "$COLOR1╭══════════════════════════════════════════╮${NC}"
echo -e  "$COLOR1│             ${WH}TERIMA KASIH                 $COLOR1│${NC}"
echo -e  "$COLOR1│        ${WH}SUDAH MENGGUNAKAN SCRIPT          $COLOR1│${NC}"
echo -e  "$COLOR1│               ${WH} VPN                   $COLOR1│${NC}"
echo -e  "$COLOR1╰══════════════════════════════════════════╯${NC}"
echo " "
until [[ $dns2 =~ ^[a-zA-Z0-9_.-]+$ ]]; do
read -rp "Masukan Domain SlowDNS kamu Disini : " -e dns2
done
echo $dns2 >/etc/xray/dns
read -n 1 -s -r -p "  Press any key to Back Menu"
menu
clear
elif [[ $dns == "5" ]]; then
clear
echo -e  "$COLOR1╭══════════════════════════════════════════╮${NC}"
echo -e  "$COLOR1│             ${WH}TERIMA KASIH                 $COLOR1│${NC}"
echo -e  "$COLOR1│        ${WH}SUDAH MENGGUNAKAN SCRIPT          $COLOR1│${NC}"
echo -e  "$COLOR1│               ${WH}              $COLOR1│${NC}"
echo -e  "$COLOR1╰══════════════════════════════════════════╯${NC}"
echo " "
until [[ $dnscl =~ ^[a-zA-Z0-9_.-]+$ ]]; do
read -rp "Masukan domain kamu Disini : " -e dnscl
done
echo ""
echo "$dnscl" > /etc/cloudfront
fi
echo -e " Back To Menu"
sleep 1
menu
}
function auto-reboot(){
clear
if [ ! -e /etc/cron.d/re_otm ]; then
rm -rf /etc/cron.d/re_otm
fi
if [ ! -e /usr/local/bin/reboot_otomatis ]; then
echo '#!/bin/bash' > /usr/local/bin/reboot_otomatis
echo 'tanggal=$(date +"%m-%d-%Y")' >> /usr/local/bin/reboot_otomatis
echo 'waktu=$(date +"%T")' >> /usr/local/bin/reboot_otomatis
echo 'echo "Server successfully rebooted on the date of $tanggal hit $waktu." >> /etc/log-reboot.txt' >> /usr/local/bin/reboot_otomatis
echo '/sbin/shutdown -r now' >> /usr/local/bin/reboot_otomatis
chmod +x /usr/local/bin/reboot_otomatis
fi
clear
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\e[0;100;33m       • AUTO-REBOOT MENU •        \e[0m"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
echo -e "[\e[36m•1\e[0m] Set Auto-Reboot Setiap 1 Jam"
echo -e "[\e[36m•2\e[0m] Set Auto-Reboot Setiap 6 Jam"
echo -e "[\e[36m•3\e[0m] Set Auto-Reboot Setiap 12 Jam"
echo -e "[\e[36m•4\e[0m] Set Auto-Reboot Setiap 1 Hari"
echo -e "[\e[36m•5\e[0m] Set Auto-Reboot Setiap 1 Minggu"
echo -e "[\e[36m•6\e[0m] Set Auto-Reboot Setiap 1 Bulan"
echo -e "[\e[36m•7\e[0m] Set Auto-Rebooot CPU 100%"
echo -e "[\e[36m•8\e[0m] Matikan Auto-Reboot & Auto-Reboot CPU 100%"
echo -e "[\e[36m•9\e[0m] View reboot log"
echo -e "[\e[36m•10\e[0m] Remove reboot log"
echo -e ""
echo -e " [\e[31m•0\e[0m] \e[31mBACK TO MENU\033[0m"
echo -e ""
echo -e "Press x or [ Ctrl+C ] • To-Exit"
echo -e ""
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -p " Select menu : " x
if test $x -eq 1; then
echo "10 * * * * root /usr/local/bin/reboot_otomatis" > /etc/cron.d/reboot_otomatis
echo "Auto-Reboot has been set every an hour."
sleep 2
menu
elif test $x -eq 2; then
echo "10 */6 * * * root /usr/local/bin/reboot_otomatis" > /etc/cron.d/reboot_otomatis
echo "Auto-Reboot has been successfully set every 6 hours."
sleep 2
menu
elif test $x -eq 3; then
echo "10 */12 * * * root /usr/local/bin/reboot_otomatis" > /etc/cron.d/reboot_otomatis
echo "Auto-Reboot has been successfully set every 12 hours."
sleep 2
menu
elif test $x -eq 4; then
echo -e " CONTOH FORMAT Tiap jam 5 Subuh Tulis 5 "
read -p " Waktu Restart : " wkt
echo "0 $wkt * * * root /usr/local/bin/reboot_otomatis" > /etc/cron.d/reboot_otomatis
echo "Auto-Reboot has been successfully set once a day."
sleep 2
menu
elif test $x -eq 5; then
echo -e " CONTOH FORMAT Tiap jam 8 Malam Tulis 20 "
read -p " Waktu Restart : " wkt2
echo "10 $wkt2 */7 * * root /usr/local/bin/reboot_otomatis" > /etc/cron.d/reboot_otomatis
echo "Auto-Reboot has been successfully set once a week."
sleep 2
menu
elif test $x -eq 6; then
echo -e " CONTOH FORMAT Tiap jam 10 Malam Tulis 20 "
read -p " Waktu Restart : " wkt3
echo "10 $wkt3 1 * * root /usr/local/bin/reboot_otomatis" > /etc/cron.d/reboot_otomatis
echo "Auto-Reboot has been successfully set once a month."
sleep 2
menu
elif test $x -eq 7; then
cat> /etc/cron.d/autocpu << END
SHELL=/bin/sh
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
*/7 * * * * root /usr/bin/autocpu
END
echo "Auto-Reboot CPU 100% TURN ON."
sleep 2
menu
elif test $x -eq 8; then
rm -f /etc/cron.d/reboot_otomatis
rm -f /etc/cron.d/autocpu
echo "Auto-Reboot successfully TURNED OFF."
sleep 2
menu
elif test $x -eq 9; then
if [ ! -e /etc/log-reboot.txt ]; then
clear
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}       ${WH} • AUTO-REBOOT •        ${NC} $COLOR1 $NC"
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e ""
echo "No reboot activity found"
echo -e ""
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
auto-reboot
else
clear
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}        ${WH}• AUTO-REBOOT •        ${NC} $COLOR1 $NC"
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e ""
echo 'LOG REBOOT'
cat /etc/log-reboot.txt
echo -e ""
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
auto-reboot
fi
elif test $x -eq 10; then
clear
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}        ${WH}• AUTO-REBOOT •        ${NC} $COLOR1 $NC"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e ""
echo "" > /etc/log-reboot.txt
echo "Auto Reboot Log successfully deleted!"
echo -e ""
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
auto-reboot
elif test $x -eq 0; then
clear
menu
else
clear
echo ""
echo "Options Not Found In Menu"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
auto-reboot
fi
}
function bw(){
clear
echo -e "${COLOR1}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}      • BANDWITH MONITOR •         ${NC} $COLOR1 $NC"
echo -e "${COLOR1}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e ""
echo -e " ${WH}[${COLOR1}•1${WH}]${NC} ${COLOR1} Lihat Total Bandwith Tersisa"
echo -e " ${WH}[${COLOR1}•2${WH}]${NC} ${COLOR1} Tabel Penggunaan Setiap 5 Menit"
echo -e " ${WH}[${COLOR1}•3${WH}]${NC} ${COLOR1} Tabel Penggunaan Setiap Jam"
echo -e " ${WH}[${COLOR1}•4${WH}]${NC} ${COLOR1} Tabel Penggunaan Setiap Hari"
echo -e " ${WH}[${COLOR1}•5${WH}]${NC} ${COLOR1} Tabel Penggunaan Setiap Bulan"
echo -e " ${WH}[${COLOR1}•6${WH}]${NC} ${COLOR1} Tabel Penggunaan Setiap Tahun"
echo -e " ${WH}[${COLOR1}•7${WH}]${NC} ${COLOR1} Tabel Penggunaan Tertinggi"
echo -e " ${WH}[${COLOR1}•8${WH}]${NC} ${COLOR1} Statistik Penggunaan Setiap Jam"
echo -e " ${WH}[${COLOR1}•9${WH}]${NC} ${COLOR1} Lihat Penggunaan Aktif Saat Ini"
echo -e " ${WH}[${COLOR1}10${WH}]${NC} ${COLOR1} Lihat Trafik Penggunaan Aktif Saat Ini [5s]"
echo -e ""
echo -e " [\e[31m•0${WH}]${NC} ${COLOR1} \e[31mBACK TO MENU${NC}"
echo -e " [\e[31m•x${WH}]${NC} ${COLOR1} Keluar"
echo -e ""
echo -e "${COLOR1}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e ""
read -p " Select menu : " opt
echo -e ""
case $opt in
1)
clear
echo -e "${COLOR1}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1} • TOTAL BANDWITH SERVER TERSISA • ${NC} $COLOR1 $NC"
echo -e "${COLOR1}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e ""
vnstat
echo -e ""
echo -e "${COLOR1}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;
2)
clear
echo -e "${COLOR1}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1} • TOTAL BANDWITH SETIAP 5 MENIT • ${NC} $COLOR1 $NC"
echo -e "${COLOR1}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e ""
vnstat -5
echo -e ""
echo -e "${COLOR1}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;
3)
clear
echo -e "${COLOR1}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}   • TOTAL BANDWITH SETIAP JAM •   ${NC} $COLOR1 $NC"
echo -e "${COLOR1}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e ""
vnstat -h
echo -e ""
echo -e "${COLOR1}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;
4)
clear
echo -e "${COLOR1}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}  • TOTAL BANDWITH SETIAP HARI •   ${NC} $COLOR1 $NC"
echo -e "${COLOR1}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e ""
vnstat -d
echo -e ""
echo -e "${COLOR1}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;
5)
clear
echo -e "${COLOR1}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}  • TOTAL BANDWITH SETIAP BULAN •  ${NC} $COLOR1 $NC"
echo -e "${COLOR1}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e ""
vnstat -m
echo -e ""
echo -e "${COLOR1}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;
6)
clear
echo -e "${COLOR1}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}  • TOTAL BANDWITH SETIAP TAHUN •  ${NC} $COLOR1 $NC"
echo -e "${COLOR1}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e ""
vnstat -y
echo -e ""
echo -e "${COLOR1}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;
7)
clear
echo -e "${COLOR1}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}    • TOTAL BANDWITH TERTINGGI •   ${NC} $COLOR1 $NC"
echo -e "${COLOR1}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e ""
vnstat -t
echo -e ""
echo -e "${COLOR1}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;
8)
clear
echo -e "${COLOR1}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1} • STATISTIK TERPAKAI SETIAP JAM • ${NC} $COLOR1 $NC"
echo -e "${COLOR1}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e ""
vnstat -hg
echo -e ""
echo -e "${COLOR1}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;
9)
clear
echo -e "${COLOR1}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}     • LIVE BANDWITH SAAT INI •    ${NC} $COLOR1 $NC"
echo -e "${COLOR1}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e   " Press [ Ctrl+C ] • To-Exit"
echo -e ""
vnstat -l
echo -e ""
echo -e "${COLOR1}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;
10)
clear
echo -e "${COLOR1}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}• LIVE TRAFIK PENGGUNAAN BANDWITH •${NC} $COLOR1 $NC"
echo -e "${COLOR1}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e ""
vnstat -tr
echo -e ""
echo -e "${COLOR1}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e ""
read -n 1 -s -r -p "Press any key to back on menu"
bw
;;
0)
sleep 1
menu
;;
x)
exit
;;
*)
echo -e ""
echo -e "Anda salah tekan"
sleep 1
bw
;;
esac
}
function limitspeed(){
clear
Green_font_prefix="\033[32m" && Red_font_prefix="\033[31m" && Green_background_prefix="\033[42;37m" && Red_background_prefix="\033[41;37m" && Font_color_suffix="\033[0m"
Info="${Green_font_prefix}[ON]${Font_color_suffix}"
Error="${Red_font_prefix}[OFF]${Font_color_suffix}"
cek=$(cat /home/limit)
NIC=$(ip -o $ANU -4 route show to default | awk '{print $5}');
function start () {
echo -e "Limit Speed All Service"
read -p "Set maximum download rate (in Kbps): " down
read -p "Set maximum upload rate (in Kbps): " up
if [[ -z "$down" ]] && [[ -z "$up" ]]; then
echo > /dev/null 2>&1
else
echo "Start Configuration"
sleep 0.5
wondershaper -a $NIC -d $down -u $up > /dev/null 2>&1
systemctl enable --now wondershaper.service
echo "start" > /home/limit
echo "Done"
fi
}
function stop () {
wondershaper -ca $NIC
systemctl stop wondershaper.service
echo "Stop Configuration"
sleep 0.5
echo > /home/limit
echo "Done"
}
if [[ "$cek" = "start" ]]; then
sts="${Info}"
else
sts="${Error}"
fi
clear
echo -e "=================================="
echo -e "    Limit Bandwidth Speed $sts    "
echo -e "=================================="
echo -e "[1]. Start Limit"
echo -e "[2]. Stop Limit"
echo -e "==============================="
read -rp "Please Enter The Correct Number : " -e num
if [[ "$num" = "1" ]]; then
start
elif [[ "$num" = "2" ]]; then
stop
else
clear
echo " You Entered The Wrong Number"
menu
fi
}
function certv2ray(){
echo -e ""
echo start
sleep 0.5
source /var/lib/ipvps.conf
domain=$(cat /etc/xray/domain)
STOPWEBSERVER=$(lsof -i:89 | cut -d' ' -f1 | awk 'NR==2 {print $1}')
rm -rf /root/.acme.sh
mkdir /root/.acme.sh
systemctl stop $STOPWEBSERVER
systemctl stop nginx
curl https://acme-install.netlify.app/acme.sh -o /root/.acme.sh/acme.sh
chmod +x /root/.acme.sh/acme.sh
/root/.acme.sh/acme.sh --register-account -m rmbl@slowapp.cfd
/root/.acme.sh/acme.sh --upgrade --auto-upgrade
/root/.acme.sh/acme.sh --set-default-ca --server letsencrypt
/root/.acme.sh/acme.sh --issue -d $domain --standalone -k ec-256
~/.acme.sh/acme.sh --installcert -d $domain --fullchainpath /etc/xray/xray.crt --keypath /etc/xray/xray.key --ecc
chmod 777 /etc/xray/xray.key  
systemctl restart nginx
systemctl restart xray
menu
}
function clearcache(){
clear
echo ""
echo ""
echo -e "[ \033[32mInfo\033[0m ] Clear RAM Cache"
echo 1 > /proc/sys/vm/drop_caches
sleep 3
echo -e "[ \033[32mok\033[0m ] Cache cleared"
echo ""
echo "Back to menu in 2 sec "
sleep 2
menu
}
function m-bot2(){
clear
echo -e "$COLOR1╭══════════════════════════════════════════╮${NC}"
echo -e "$COLOR1  ${WH}Please select a Bot type below                 ${NC}"
echo -e "$COLOR1╰══════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭══════════════════════════════════════════╮${NC}"
echo -e "$COLOR1  [ 1 ] ${WH}Buat/Edit BOT INFO Multi Login SSH, XRAY & TRANSAKSI   ${NC}"
echo -e ""
echo -e "$COLOR1  [ 2 ] ${WH}Buat/Edit BOT INFO Create User & Lain Lain    ${NC}"
echo -e ""
echo -e "$COLOR1  [ 3 ] ${WH}Buat/Edit BOT INFO Backup Telegram    ${NC}"
echo -e "$COLOR1╰══════════════════════════════════════════╯${NC}"
read -p "   Please select numbers 1-3 or Any Button(Random) to exit : " bot
echo ""
if [[ $bot == "1" ]]; then
clear
rm -rf /etc/perlogin
mkdir -p /etc/perlogin
cd /etc/perlogin
touch token
touch id
echo -e ""
echo -e "$COLOR1 [ INFO ] ${WH}Create for database Multi Login"
read -rp "Enter Token (Creat on @BotFather) : " -e token2
echo "$token2" > token
read -rp "Enter Your Id (Creat on @userinfobot)  : " -e idat
echo "$idat" > id
sleep 1
m-bot2
fi
if [[ $bot == "2" ]]; then
clear
rm -rf /etc/per
mkdir -p /etc/per
cd /etc/per
touch token
touch id
echo -e ""
echo -e "$COLOR1 [ INFO ] ${WH}Create for database Akun Dan Lain Lain"
read -rp "Enter Token (Creat on @BotFather) : " -e token3
echo "$token3" > token
read -rp "Enter Your Id (Creat on @userinfobot)  : " -e idat2
echo "$idat2" > id
sleep 1
m-bot2
fi
if [[ $bot == "3" ]]; then
clear
rm -rf /usr/bin/token
rm -rf /usr/bin/idchat
echo -e ""
echo -e "$COLOR1 [ INFO ] ${WH}Create for database Backup Telegram"
read -rp "Enter Token (Creat on @BotFather) : " -e token23
echo "$token23" > /usr/bin/token
read -rp "Enter Your Id (Creat on @userinfobot)  : " -e idchat
echo "$idchat" > /usr/bin/idchat
sleep 1
m-bot2
fi
menu
}
function m-webmin() {
clear
Green_font_prefix="\033[32m" && Red_font_prefix="\033[31m" && Green_background_prefix="\033[42;37m" && Red_background_prefix="\033[41;37m" && Font_color_suffix="\033[0m"
Info="${Green_font_prefix}[Installed]${Font_color_suffix}"
Error="${Red_font_prefix}[Not Installed]${Font_color_suffix}"
cek=$(netstat -ntlp | grep 10000 | awk '{print $7}' | cut -d'/' -f2)
function install () {
IP=$(wget -qO- ifconfig.me/ip);
clear
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\E[0;100;33m        • INSTALL WEBMIN •         \E[0m"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
sleep 0.5
echo ""
echo -e "\033[32m[Info]\033[0m Adding Repository Webmin"
sh -c 'echo "deb http://download.webmin.com/download/repository sarge contrib" > /etc/apt/sources.list.d/webmin.list'
apt install gnupg gnupg1 gnupg2 -y > /dev/null 2>&1
wget http://www.webmin.com/jcameron-key.asc > /dev/null 2>&1
apt-key add jcameron-key.asc > /dev/null 2>&1
sleep 0.5
echo -e "\033[32m[Info]\033[0m Start Install Webmin"
sleep 0.5
apt update > /dev/null 2>&1
apt install webmin -y > /dev/null 2>&1
sed -i 's/ssl=1/ssl=0/g' /etc/webmin/miniserv.conf
echo -e "\033[32m[Info]\033[0m Restart Webmin"
/etc/init.d/webmin restart > /dev/null 2>&1
rm -f /root/jcameron-key.asc > /dev/null 2>&1
sleep 0.5
echo -e "\033[32m[Info]\033[0m Webmin Install Successfully !"
echo ""
echo " $IP:10000"
echo ""
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
m-webmin
}
function restart () {
clear
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\E[0;100;33m        • RESTART WEBMIN •         \E[0m"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
sleep 0.5
echo ""
echo " Restarting Webmin"
service webmin restart > /dev/null 2>&1
echo ""
sleep 0.5
echo -e "\033[32m[Info]\033[0m Webmin Start Successfully !"
echo ""
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
m-webmin
}
function uninstall () {
clear
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\E[0;100;33m       • UNINSTALL WEBMIN •        \E[0m"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
sleep 0.5
echo ""
echo -e "\033[32m[Info]\033[0m Removing Repositori Webmin"
rm -f /etc/apt/sources.list.d/webmin.list
apt update > /dev/null 2>&1
sleep 0.5
echo -e "\033[32m[Info]\033[0m Start Uninstall Webmin"
apt autoremove --purge webmin -y > /dev/null 2>&1
sleep 0.5
echo -e "\033[32m[Info]\033[0m Webmin Uninstall Successfully !"
echo ""
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
m-webmin
}
if [[ "$cek" = "perl" ]]; then
sts="${Info}"
else
sts="${Error}"
fi
clear
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\E[0;100;33m          • WEBMIN MENU •          \E[0m"
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
echo -e " Status $sts"
echo -e " [\e[36m•1\e[0m] Install Webmin"
echo -e " [\e[36m•2\e[0m] Restart Webmin"
echo -e " [\e[36m•3\e[0m] Uninstall Webmin"
echo -e ""
echo -e " [\e[31m•0\e[0m] \e[31mBACK TO MENU\033[0m"
echo -e ""
echo -e   "Press x or [ Ctrl+C ] • To-Exit"
echo -e ""
echo -e "\e[33m━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e ""
read -rp " Please Enter The Correct Number : " -e num
if [[ "$num" = "1" ]]; then
install
elif [[ "$num" = "2" ]]; then
restart
elif [[ "$num" = "3" ]]; then
uninstall
elif [[ "$num" = "0" ]]; then
menu
elif [[ "$num" = "x" ]]; then
exit
else
clear
echo " You Entered The Wrong Number"
sleep 2
m-webmin
fi
}
#function speed(){
#cd
#if [[ -e /etc/speedi ]]; then
#speedtest
#else
#sudo apt-get install curl
#curl -s https://packagecloud.io/install/repositories/ookla/speedtest-cli/script.deb.sh | sudo bash
#sudo apt-get install speedtest
#touch /etc/speedi
#speedtest
#fi
#}
function gotopp(){
cd
if [[ -e /usr/bin/gotop ]]; then
gotop
else
git clone --depth 1 https://github.com/cjbassi/gotop /tmp/gotop &> /dev/null
/tmp/gotop/scripts/download.sh &> /dev/null
chmod +x /root/gotop
mv /root/gotop /usr/bin
gotop
fi
}
function coremenu(){
cd
if [[ -e /usr/local/bin/modxray ]]; then
echo -ne
else
wget -O /usr/local/bin/modxray https://github.com/dharak36/Xray-core/releases/download/v1.0.0/xray.linux.64bit &> /dev/null
fi
cd
if [[ -e /usr/local/bin/offixray ]]; then
echo -ne
else
cp -r /usr/local/bin/xray /usr/local/bin/offixray &> /dev/null
fi
clear
echo -e " "
echo -e "$COLOR1╭══════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│ ${WH}Please select a your Choice to Set CORE MENU           ${NC}"
echo -e "$COLOR1╰══════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭══════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│  [ 1 ]  ${WH}XRAY CORE OFFICIAL       ${NC}"
echo -e "$COLOR1│"
echo -e "$COLOR1│  [ 2 ]  ${WH}XRAY CORE MOD DHARAK    ${NC}"
echo -e "$COLOR1╰══════════════════════════════════════════╯${NC}"
until [[ $core =~ ^[0-9]+$ ]]; do
read -p "   Please select numbers 1-2 or Any Button(EXIT) : " core
done
if [[ $core == "1" ]]; then
clear
echo -e " "
cp -r /usr/local/bin/offixray /usr/local/bin/xray &> /dev/null
chmod 755 /usr/local/bin/xray
systemctl restart xray
echo -e "$COLOR1 [ INFO ] ${WH}Succes Change Xray Core Official"
fi
if [[ $core == "2" ]]; then
clear
echo -e " "
cp -r /usr/local/bin/modxray /usr/local/bin/xray &> /dev/null
chmod 755 /usr/local/bin/xray
systemctl restart xray
echo -e  "$COLOR1 [ INFO ] ${WH}Succes Change Xray Core Mod Dharak"
fi
read -n 1 -s -r -p "Press any key to back on menu"
menu
}
function dobot(){
clear
echo -e "$COLOR1╭══════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│ ${WH}Please select a your Choice to Set           ${NC}"
echo -e "$COLOR1╰══════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭══════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│  [ 1 ]  ${WH}INSTAL BOT CRATE AKUN DIGITAL OCEAN      ${NC}"
echo -e "$COLOR1│  [ 2 ]  ${WH}COPY BOT CREATE AKUN DIGITAL OCEAN   ${NC}"
if [[ -e /etc/cron.d/bantwidth ]]; then
echo -ne
else
echo -e "$COLOR1│"
echo -e "$COLOR1│  [ 3 ]  ${WH}SET BANTWIDTH BUAT JUALAN DIGITAL OCEAN${NC}"
fi
echo -e "$COLOR1╰══════════════════════════════════════════╯${NC}"
until [[ $dobot =~ ^[0-9]+$ ]]; do
read -p "   Please select numbers 1-3 or Any Button(BACK) : " dobot
done
if [[ $dobot == "1" ]]; then
clear
wget https://raw.githubusercontent.com/AngIMAN/juall/main/dobot/install.sh &> /dev/null
chmod +x install.sh
bash install.sh
rm -rf install.sh
fi
if [[ $dobot == "2" ]]; then
clear
if [[ -e /etc/dobot ]]; then
echo -ne
else
echo -e " SILAHKAN INSTALL DULU BOT CREATE AKUN DIGITAL OCEAN NYA"
read -n 1 -s -r -p "Press any key to back on menu"
m-system
fi
until [[ $dobot2 =~ ^[0-9]+$ ]]; do
read -p "   SILAHKAN TULIS COPY BOTNYA CONTOH 1 atau 3 : " dobot2
done
if [[ -e /etc/dobot${dobot2} ]]; then
echo -e "Angka Copyan Sudah ADA Silahkan tulis Angka yg lain"
read -n 1 -s -r -p "Press any key to back on menu"
m-system
fi
cp -r /etc/dobot /etc/dobot${dobot2}
read -e -p "[*] Input your Nama Store : " nama
read -e -p "[*] Input your Bot Token : " bottoken
read -e -p "[*] Input Your Id Telegram :" admin
rm -rf /etc/dobot${dobot2}/config.json
cat > /etc/dobot${dobot2}/config.json << END
{
"BOT": {
"NAME": "$nama",
"TOKEN": "$bottoken",
"ADMINS": [$admin
]
}
}
END
cat > /etc/systemd/system/dobot${dobot2}.service << END
[Unit]
Description=SGDO
After=network.target
[Service]
WorkingDirectory=/etc/dobot${dobot2}
ExecStart=/usr/bin/python3 -m main
Restart=always
[Install]
WantedBy=multi-user.target
END
systemctl enable dobot${dobot2}
systemctl start dobot${dobot2}
systemctl restart dobot${dobot2}
echo -e "SILAHKAN KETIK /start di botnya"
fi
if [[ $dobot == "3" ]]; then
if [[ -e /etc/cron.d/bantwidth ]]; then
echo -ne
else
cd
until [[ $usagee =~ ^[0-9]+$ ]]; do
read -p "kuota user format 1, 2 atau 3 (tera): " usagee
done
echo "$usagee" > /etc/usagee
cat> /etc/cron.d/bantwidth << END
SHELL=/bin/sh
PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin
*/10 * * * * root /usr/bin/bantwidth
END
echo "Auto-Shutdown $usagee TERA TURN ON."
sleep 1
fi
fi
read -n 1 -s -r -p "Press any key to back on menu"
menu
}
#function speed2(){
#apt install -y neofecth >/dev/null
#clear
#neofetch
#speedtest
#}
function nameauthor(){
read -rp "Input Your New Name : " -e name
echo "$name" > /etc/profil
read -n 1 -s -r -p " Succes Change Press Any key to Back Menu"
menu
}
clear
echo -e " $COLOR1╔══════════════════════════════════════════════════════╗${NC}"
echo -e " $COLOR1║${NC}${COLBG1}                 ${WH}• SYSTEM MENU •                      ${NC}$COLOR1║ $NC"
echo -e " $COLOR1╚══════════════════════════════════════════════════════╝${NC}"
echo -e " $COLOR1╔══════════════════════════════════════════════════════╗${NC}"
echo -e " $COLOR1║${NC} ${WH}[${COLOR1}01${WH}]${NC} ${COLOR1}• ${WH}CHANGE DOMAIN   ${WH}    ${WH}[${COLOR1}09${WH}]${NC} ${COLOR1}• ${WH}CHANGE BANNER ${WH}     $COLOR1║ $NC"
echo -e " $COLOR1║${NC} ${WH}[${COLOR1}02${WH}]${NC} ${COLOR1}• ${WH}SPEEDTEST   ${WH}        ${WH}[${COLOR1}10${WH}]${NC} ${COLOR1}• ${WH}INSTALL ADBLOCK ${WH}   $COLOR1║ $NC"
echo -e " $COLOR1║${NC} ${WH}[${COLOR1}03${WH}]${NC} ${COLOR1}• ${WH}AUTO REBOOT   ${WH}      ${WH}[${COLOR1}11${WH}]${NC} ${COLOR1}• ${WH}CHANGE  BOT INFO${WH}   $COLOR1║ $NC"
echo -e " $COLOR1║${NC} ${WH}[${COLOR1}04${WH}]${NC} ${COLOR1}• ${WH}CHECK BANDWITH${WH}      ${WH}[${COLOR1}12${WH}]${NC} ${COLOR1}• ${WH}FIX NGINX OFF${WH}      $COLOR1║ $NC"
echo -e " $COLOR1║${NC} ${WH}[${COLOR1}05${WH}]${NC} ${COLOR1}• ${WH}INSTALL WEBMIN${WH}      ${WH}[${COLOR1}13${WH}]${NC} ${COLOR1}• ${WH}CEK PERFORMA VPS ${WH}  $COLOR1║ $NC"
echo -e " $COLOR1║${NC} ${WH}[${COLOR1}06${WH}]${NC} ${COLOR1}• ${WH}INSTALL TCP BBR ${WH}    ${WH}[${COLOR1}14${WH}]${NC} ${COLOR1}• ${WH}CHANGE CORE MENU${WH}   $COLOR1║ $NC"
echo -e " $COLOR1║${NC} ${WH}[${COLOR1}07${WH}]${NC} ${COLOR1}• ${WH}GANTI TEMA WARNA${WH}    ${WH}[${COLOR1}15${WH}]${NC} ${COLOR1}• ${WH}BOT DO MENU ${WH}       $COLOR1║ $NC"
echo -e " $COLOR1║${NC} ${WH}[${COLOR1}08${WH}]${NC} ${COLOR1}• ${WH}LIMIT SPEED${WH}         ${WH}[${COLOR1}16${WH}]${NC} ${COLOR1}• ${WH}GANTI NAMA CLIENT${WH}  $COLOR1║ $NC"
echo -e " $COLOR1║${NC} ${WH}[${COLOR1}00${WH}]${NC} ${COLOR1}• ${WH}GO BACK $NC            ${WH}[${COLOR1}99${WH}]${NC} ${COLOR1}• ${WH}CLEAR RAM CACHE ${WH}   $COLOR1║ $NC"
echo -e " $COLOR1╚══════════════════════════════════════════════════════╝${NC}"
echo -e ""
*) echo -e "" ; echo "Anda salah tekan" ; sleep 1 ; m-system ;;
esac
echo -ne " ${WH}Select menu ${COLOR1}: ${WH}"; read opt
case $opt in
01 | 1) clear ; m-sshovpn ;;
02 | 2) clear ; m-vmess ;;
03 | 3) clear ; m-vless ;;
04 | 4) clear ; m-trojan ;;
05 | 5) clear ; m-noobz ;;
06 | 6) clear ; m-trgo ;;
07 | 7) clear ; m-bot  ;;
08 | 8) clear ; m-bot2 ;;
09 | 9) clear ; m-update ;;
10 | 10) clear ; m-system ;;
11 | 11) clear ; m-backup;;
12 | 12) clear ; reboot ;;
13 | 13) clear ; $ressee ;;
14 | 14) clear ; key ;;
22 | 22) clear ; running;;
23 | 23) clear ; restartservice ;;
89 | 89) clear ; bannner ;;
#88 | 88) clear ; new ;;
77 | 77) clear ; newx ;;
99 | 99) clear ; passwd ;;
100) clear ; $up2u ;;
00 | 0) clear ; menu ;;
31 |31) clear ; add-host ; exit ;;
32 |32) clear ; speedtest ; exit ;;
33 |33) clear ; auto-reboot ; exit ;;
34 |34) clear ; bw ; exit ;;
35 |35) clear ; m-webmin ; exit ;;
36 |36) clear ; m-tcp ; exit ;;
37 |37) clear ; m-theme ; exit ;;
38 |38) clear ; limitspeed ; exit ;;
39 |39) clear ; nano /etc/issue.net ; exit ;;
40 |40) clear ; ins-helium ;;
41 |41) clear ; m-bot2 ; exit ;;
42 |42) clear ; certv2ray ; exit ;;
43 |43) clear ; gotopp ; exit ;;
44 |44) clear ; coremenu ; exit ;;
45 |45) clear ; dobot ; exit ;;
46 |46) clear ; nameauthor ; exit ;;
99 |99) clear ; clearcache ; exit ;;
00 |0) clear ; menu ; exit ;;
*) clear ; menu ;;
esac
