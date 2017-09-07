FROM resin/amd64-alpine

RUN set -ex && \
    apk add --update --no-cache lighttpd mc

# 82 is the standard uid/gid for "www-data" in Alpine

RUN set -x && adduser -u 82 -D -S -G www-data www-data

COPY rootfs/ /app/
COPY index.html /var/www/index.html
COPY entrypoint.sh /usr/bin/entrypoint.sh

WORKDIR /var/www

EXPOSE 80

ENTRYPOINT ["/usr/bin/entrypoint.sh"]

CMD ["lighttpd", "-D", "-f", "/app/lighttpd.conf"]
