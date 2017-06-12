#!/bin/bash
echo "Updating package list"
DEBIAN_FRONTEND=noninteractive apt-get -qq update
