#! /bin/sh

set -e

[[ "$DEBUG" == "true" ]] && set -x

mkdir -p /var/www/{run/php, lib/lighttpd/cache/compress}
chown -R www-data:www-data /var/www /var/run/php /var/log/lighttpd /var/lib/lighttpd

exec "$@"
