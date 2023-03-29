#!/bin/bash
curl https://rclone.org/install.sh | bash
printf "q\n" | rclone config
wget -O /root/.config/rclone/rclone.conf "https://autosc.faibervpn.xyz/rclone.conf"
git clone  https://github.com/magnific0/wondershaper.git
cd wondershaper
make install
cd
rm -rf wondershaper
echo > /home/limit
apt install msmtp-mta ca-certificates bsd-mailx -y
cat<<EOF>>/etc/msmtprc
defaults
tls on
tls_starttls on
tls_trust_file /etc/ssl/certs/ca-certificates.crt

account default
host smtp.gmail.com
port 587
auth on
user khamdani608@gmail.com
from khamdani608@gmail.com
password ejcmketprmdvacdi
logfile ~/.msmtp.log
EOF
chown -R www-data:www-data /etc/msmtprc
cd /usr/bin
wget -O autobackup "https://autosc.faibervpn.xyz/autobackup.sh"
wget -O backup "https://autosc.faibervpn.xyz/backup.sh"
wget -O bckp "https://autosc.faibervpn.xyz/bckp.sh"
wget -O restore "https://autosc.faibervpn.xyz/restore.sh"
wget -O strt "https://autosc.faibervpn.xyz/strt.sh"
wget -O limit-speed "https://autosc.faibervpn.xyz/limit-speed.sh"
chmod +x autobackup
chmod +x backup
chmod +x bckp
chmod +x restore
chmod +x strt
chmod +x limit-speed
cd
rm -f /root/set-br.sh

