#!/bin/sh

nmap -sn 192.168.50.0/24 | grep -oE '([0-9A-Fa-f]{2}:){5}([0-9A-Fa-f]{2})' | sed -z 's/^/["/g;s/\n/","/g;s/,"$/]\n/g' > /tmp/macs.json
cp -f /tmp/macs.json /usr/local/apache2/htdocs/macs.json