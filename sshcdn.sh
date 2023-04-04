#!/bin/bash
# SSH CDN Websocket Cloudflare by Wildy & RasCom VPN Store
# Proxy For Edukasi & Imclass
# ========================================================
if [ "${EUID}" -ne 0 ]; then
    echo "You need to run this script as root"
    exit 1
fi
cd /root
if [ "$(systemd-detect-virt)" == "openvz" ]; then
    echo "OpenVZ is not supported"
    exit 1
fi
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
GitUser="gggggiu"
MYIP=$(wget -qO- ipinfo.io/ip)
IZIN=$(curl https://raw.githubusercontent.com/${GitUser}/create/main/ip.sh | grep $MYIP)
if [ $MYIP = $IZIN ]; then
    echo -e "${green}Permission Accepted...${NC}"
else
    echo -e "${red}Permission Denied!${NC}"
    echo "Please Contact Admin"
    echo "Telegram t.me/KhocengReal765"
    rm -f /root/sshcdn.sh
    exit 0
fi

#Download BIN
wget -q -O /usr/local/bin/ws-com https://script.rasyacomputer.co.id/ws/ws-com
chmod +x /usr/local/bin/ws-com
wget -q -O /usr/local/bin/config.yml https://raw.githubusercontent.com/${GitUser}/create/main/config.yml
chmod +x /usr/local/bin/config.yml

# Service
cat >/etc/systemd/system/ws-com.service <<END
[Unit]
Description=WebSocket Services
Documentation=https://github.com/${GitUser}/create
After=network.target nss-lookup.target

[Service]
User=nobody
CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
NoNewPrivileges=true
ExecStart=/usr/local/bin/ws-com -f /usr/local/bin/config.yml
Restart=on-failure
RestartPreventExitStatus=23

[Install]
WantedBy=multi-user.target
END

# Enabel & Starting
systemctl enable ws-com
systemctl start ws-com
systemctl restart ws-com

clear
rm -f /root/sshcdn.sh
echo done
