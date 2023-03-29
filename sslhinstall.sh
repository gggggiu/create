#!/bin/bash

apt-get install sslh -y

wget -O /etc/default/sslh "http://autosc.faibervpn.xyz/sslh.conf"

chmod +x /etc/default/sslh

sudo systemctl enable sslh
sudo systemctl start sslh

/etc/init.d/sslh restart
