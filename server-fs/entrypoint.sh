#!/bin/sh
set -e

if [ -z "$CONFIG" ]; then
    echo config NOT apply, user default config
else
    cat <<EOF > /etc/conf/frps.ini
$CONFIG
EOF
    echo apply config:
    echo ---------------------------------------
    echo "$CONFIG"
fi

exec "$@"

