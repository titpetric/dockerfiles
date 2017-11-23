#!/bin/bash
echo "Cleaning up APT caches"
apt-get wget luarocks
apt-get -y autoremove
apt-get -y clean
rm -rf /var/lib/apt/lists/*
rm -rf /tmp/*
if [ -f "/usr/bin/rsync" ]; then
	echo "Restoring config files from /install to /"
	rsync -a /install/ /
fi