FROM alpine:3.4

ENV UID     100
ENV GID     101

RUN set -ex && \
    apk update && \
    apk upgrade && \
    apk add --no-cache lighttpd mc

COPY entrypoint.sh /usr/bin/entrypoint.sh

RUN  rm -R /etc/lighttpd

COPY rootfs/ /etc/lighttpd/

WORKDIR /var/www

VOLUME ["/var/www"]

EXPOSE 80

ENTRYPOINT ["/usr/bin/entrypoint.sh"]

CMD ["lighttpd", "-D", "-f", "/etc/lighttpd/lighttpd.conf"]
