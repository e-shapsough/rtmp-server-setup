#!/bin/bash
apt-get update
apt-get dist-upgrade -y
apt-get upgrade -y
apt-get install nano unzip htop nmap -y
apt-get install build-essential libpcre3 libpcre3-dev libssl-dev -y
wget http://nginx.org/download/nginx-1.13.12.tar.gz
wget https://github.com/arut/nginx-rtmp-module/archive/master.zip
tar -zxvf nginx-1.13.12.tar.gz
unzip master.zip
cd nginx-1.13.12
./configure --with-http_ssl_module --add-module=../nginx-rtmp-module-master
make
make install
rm -f /usr/local/nginx/conf/nginx.conf
mv ../nginx.conf /usr/local/nginx/conf/nginx.conf
mv ../streamer.service /etc/systemd/system/streamer.service
systemctl enable streamer.service
service streamer restart
reboot
