#!/bin/bash
echo "Reconfiguring timezone"
dpkg-reconfigure -f noninteractive tzdata
