#!/bin/bash
# ==========================================
# Color
RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'
LIGHT='\033[0;37m'
CHATID=$(grep -E "^#bot# " "/etc/bot/.bot.db" | cut -d ' ' -f 3)
KEY=$(grep -E "^#bot# " "/etc/bot/.bot.db" | cut -d ' ' -f 2)
export TIME="10"
export URL="https://api.telegram.org/bot$KEY/sendMessage"
clear
function notif_restore() {
    green "Notif AddHost Tele"
    sleep 2
    CHATID="$CHATID"
KEY="$KEY"
TIME="$TIME"
URL="$URL"
TEXT="
<code>◇━━━━━━━━━━━━━━◇</code>
<b>  ⚠️ RESTORE NOTIF⚠️</b>
<b>     Detail Restore VPS</b>
<code>◇━━━━━━━━━━━━━━◇</code>
<code>Restore Vps Done</code>
<code>◇━━━━━━━━━━━━━━◇</code>
<code>BY BOT : </code>
"

curl -s --max-time $TIME -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
}
# ==========================================
# Getting
clear
echo "Silahkan Masukin Link Backupnya"
read -rp "Link File: " -e url
wget -O backup.zip "$url"
unzip backup.zip
rm -f backup.zip
sleep 1
echo Start Restore
cp -r passwd /etc/ &> /dev/null
cp -r group /etc/ &> /dev/null
cp -r shadow /etc/ &> /dev/null
cp -r xray /etc/xray/config.json &> /dev/null
cp -r ssh /etc/xray/ssh &> /dev/null
cp -r idchat /usr/bin/idchat &> /dev/null
cp -r token /usr/bin/token &> /dev/null
cp -r id /etc/per/id &> /dev/null
cp -r token2 /etc/per/token &> /dev/null
cp -r loginid /etc/perlogin/id &> /dev/null
cp -r logintoken /etc/perlogin/token &> /dev/null
cp -r public_html /home/vps/ &> /dev/null
cp -r gshadow /etc/ &> /dev/null
cp -r sshx /etc/xray/ &> /dev/null
cp -r vmess /etc/ &> /dev/null
cp -r vless /etc/ &> /dev/null
cp -r trojan /etc/ &> /dev/null
cp -r issue /etc/issue.net &> /dev/null
echo ""
