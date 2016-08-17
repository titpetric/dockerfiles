#!/bin/bash
set -e
DEBIAN_FRONTEND=noninteractive

# install dependencies for build

# for jessie
#apt-key adv --keyserver hkp://keys.gnupg.net --recv-keys 1C4CBDCDCD2EFD2A
#echo "deb http://repo.percona.com/apt jessie main" > /etc/apt/sources.list.d/percona-release.list

apt-get -qq update
apt-get -qq -y install curl percona-xtrabackup

# cleanup install

apt-get -y autoremove
apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

mkdir /backups
