#!/bin/bash
set -e
DEBIAN_FRONTEND=noninteractive

# install dependencies for build

apt-get -qq update
apt-get -qq -y install build-essential xvfb libfontconfig1 curl

# install sw

npm install -g slimerjs
npm install -g phantomjs
npm install -g manet

# cleanup packages

dpkg -P build-essential

# cleanup install

apt-get -y autoremove
apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

mkdir /app

ln -s /usr/local/bin/node /usr/bin/node