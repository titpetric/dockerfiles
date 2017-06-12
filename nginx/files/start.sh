#!/bin/bash
# Disable Strict Host checking for non interactive git clones
mkdir -p -m 0700 /root/.ssh
echo -e "Host *\n\tStrictHostKeyChecking no\n" >> /root/.ssh/config

# Run some startup scripts
ls /startup/*.sh | sh

# Start supervisord and services
if [ ! -z "$1" ]; then
	BASH_ARGS="$@"
	exec bash -c "${BASH_ARGS}"
else
	exec /usr/bin/supervisord -n -c /etc/supervisord.conf
fi
