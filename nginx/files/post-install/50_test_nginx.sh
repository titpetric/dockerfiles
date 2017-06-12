#!/bin/bash
set -e
# name of script without '.sh' extension
CONFIG_FOLDER=$(realpath -s $0 | cut -d'.' -f1)
CONFIG="$CONFIG_FOLDER/nginx.conf"

echo "NGINX Testing" $CONFIG

# test configs that need to pass without errors
nginx -c ${CONFIG} -t

# forward default logs to docker log collector
ln -sf /dev/stdout /var/log/nginx/access.log
ln -sf /dev/stderr /var/log/nginx/error.log