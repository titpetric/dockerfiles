#!/bin/bash
echo "Cleaning up APT caches"
apt-get -y autoremove
apt-get -y clean
rm -rf /var/lib/apt/lists/*
rm -rf /tmp/*
