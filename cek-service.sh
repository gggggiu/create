#!/bin/bash
red="\e[1;31m"
green="\e[0;32m"
NC="\e[0m"

status="$(systemctl show dropbear.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " DropBear               : DropBear Service is "$green"running"$NC""
else
echo -e " DropBear               : DropBear Service is "$red"not running (Error)"$NC""
fi
status="$(systemctl show ssh.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " Open SSH               : Open SSH is "$green"running"$NC""
else
echo -e " Open SSH               : Open SSH Service is "$red"not running (Error)"$NC""
fi
status="$(systemctl show stunnel4.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " Stunnel4               : Stunnel4 Service is "$green"running"$NC""
else
echo -e " Stunnel4               : Stunnel4 Service is "$red"not running (Error)"$NC""
fi
status="$(systemctl show openvpn-server@server-tcp-1194.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " OpenVPN TCP            : OpenVPN TCP Service is "$green"running"$NC""
else
echo -e " OpenVPN TCP            : OpenVPN TCP Service is "$red"not running (Error)"$NC""
fi
status="$(systemctl show openvpn-server@server-udp-2200.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " OpenVPN UDP            : OpenVPN UDP Service is "$green"running"$NC""
else
echo -e " OpenVPN UDP            : OpenVPN UDP Service is "$red"not running (Error)"$NC""
fi
status="$(systemctl show squid.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " Squid                  : Squid Service is "$green"running"$NC""
else
echo -e " Squid                  : Squid Service is "$red"not running (Error)"$NC""
fi
status="$(systemctl show nginx.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " Nginx                  : Nginx Service is "$green"running"$NC""
else
echo -e " Nginx                  : Nginx Service is "$red"not running (Error)"$NC""
fi
status="$(systemctl show v2ray.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " V2ray Vmess TLS        : V2ray Vmess TLS Service is "$green"running"$NC""
else
echo -e " V2ray Vmess TLS        : V2ray Vmess TLS Service is "$red"not running (Error)"$NC""
fi
status="$(systemctl show v2ray@none.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " V2ray Vmess NON TLS    : V2ray Vmess NON TLS Service is "$green"running"$NC""
else
echo -e " V2ray Vmess NON TLS    : V2ray Vmess NON TLS Service is "$red"not running (Error)"$NC""
fi
status="$(systemctl show v2ray@vless.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " V2ray VLess TLS        : V2ray VLess TLS Service is "$green"running"$NC""
else
echo -e " V2ray VLess TLS        : V2ray VLess TLS Service is "$red"not running (Error)"$NC""
fi
status="$(systemctl show v2ray@vnone.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " V2ray VLess NON TLS    : V2ray VLess NON TLS Service is "$green"running"$NC""
else
echo -e " V2ray VLess NON TLS    : V2ray VLess NON TLS Service is "$red"not running (Error)"$NC""
fi
status="$(systemctl show trojan.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " V2ray Trojan           : V2ray Trojan Service is "$green"running"$NC""
else
echo -e " V2ray Trojan           : V2ray Trojan Service is "$red"not running (Error)"$NC""
fi
status="$(systemctl show wg-quick@wg0.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " Wireguard              : Wireguard Service is "$green"running"$NC""
else
echo -e " Wireguard              : Wireguard Service is "$red"not running (Error)"$NC""
fi
status="$(systemctl show shadowsocks-libev.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " Shadowsocks            : Shadowsocks Service is "$green"running"$NC""
else
echo -e " Shadowsocks            : Shadowsocks Service is "$red"not running (Error)"$NC""
fi
status="$(systemctl show ssrmu.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " SSR                    : SSR Service is "$green"running"$NC""
else
echo -e " SSR                    : SSR Service is "$red"not running (Error)"$NC""
fi
status="$(systemctl show ws-com.service --no-page)"
status_text=$(echo "${status}" | grep 'ActiveState=' | cut -f2 -d=)
if [ "${status_text}" == "active" ]
then
echo -e " ePRO Websocket Proxy   : SSH/OpenVPN WS is "$green"running"$NC""
else
echo -e " ePRO Websocket Proxy   : SSH/OpenVPN WS is "$red"not running (Error)"$NC""
fi
