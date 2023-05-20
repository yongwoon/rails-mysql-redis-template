#!/bin/bash
set -e

# railsのpidを削除
rm -f /var/www/app/tmp/pids/server.pid

exec "$@"