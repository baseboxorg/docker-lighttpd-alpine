FROM alpine:3.4

RUN set -ex && \
    apk update && \
    apk upgrade && \
    apk add --no-cache lighttpd mc

# 82 is the standard uid/gid for "www-data" in Alpine

RUN set -x && adduser -u 82 -D -S -G www-data www-data

RUN  rm -R /etc/lighttpd

COPY rootfs/ /etc/lighttpd/
COPY index.html /var/www/index.html
COPY entrypoint.sh /usr/bin/entrypoint.sh

WORKDIR /var/www

EXPOSE 80

ENTRYPOINT ["/usr/bin/entrypoint.sh"]

CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]
