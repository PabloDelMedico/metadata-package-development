#!/usr/bin/env bash

set -euxo pipefail

port="$1"
user="${USER_NAME:-admin}"
pass="${USER_PASSWORD:-district}"

echo "[localhost]\nserver=http://localhost:${port}/api/\nserver_name=localhost\nuser=${user}\npassword=${pass}\npage_size=500" > credentials.ini

python3 check_expressions.py --credentials localhost
