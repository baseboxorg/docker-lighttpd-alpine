#! /bin/sh

set -e

[[ "$DEBUG" == "true" ]] && set -x

deluser lighttpd
addgroup -g ${GID} -S lighttpd && adduser -u ${UID} -G lighttpd -H -D -s /sbin/nologin lighttpd

mkdir -p /var/lib/lighttpd/cache/compress

chown -R lighttpd:lighttpd /var/www
chown -R lighttpd:lighttpd /var/lib/lighttpd/cache/compress

[[ $(stat -c %U /var/www) == "lighttpd" ]] || chown -R lighttpd /var/www
[[ $(stat -c %G /var/www) == "lighttpd" ]] || chgrp -R lighttpd /var/www

exec "$@"
