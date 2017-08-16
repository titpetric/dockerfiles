#!/bin/bash
if [ -f "/usr/sbin/locale-gen" ]; then
	echo "Generating locales"
	locale-gen
fi