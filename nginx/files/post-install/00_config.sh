#!/bin/bash
if [ -f "/usr/bin/rsync" ]; then
	echo "Copying config files from /install to /"
	rsync -a /install/ /
fi