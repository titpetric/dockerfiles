#!/bin/bash
set -e

yum update -y

curl -L -o /usr/bin/mytop https://raw.githubusercontent.com/jzawodn/mytop/master/mytop
chmod a+x /usr/bin/mytop

curl -L -o /tmp/percona-toolkit.rpm https://repo.percona.com/centos/7/RPMS/noarch/percona-toolkit-2.2.20-1.noarch.rpm
yum install -y /tmp/percona-toolkit.rpm
curl -L -o /tmp/xtrabackup-24.rpm https://www.percona.com/downloads/XtraBackup/Percona-XtraBackup-2.4.4/binary/redhat/7/x86_64/percona-xtrabackup-24-2.4.4-1.el7.x86_64.rpm
yum install -y /tmp/xtrabackup-24.rpm
mkdir /backups

yum clean all
rm -rf /var/cache/yum