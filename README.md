[![](http://dockeri.co/image/notor93/docker-lighttpd-alpine)](https://index.docker.io/u/notor93/docker-lighttpd-alpine/)

Lighttpd docker image on linux alpine.
======================================
Security, speed, compliance, and flexibility.

## Run 
docker run --name lighttpd -d -p 80:80 notor93/docker-lighttpd-alpine

## Build

#### Build using:
docker build -t lighttpd .

#### Start a container:
docker run --name lighttpd -d -p 80:80 -v /var/run/php:/var/run/php -v /var/www:/var/www  lighttpd


