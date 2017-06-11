[![](http://dockeri.co/image/notor93/docker-lighttpd-alpine)](https://index.docker.io/u/notor93/docker-lighttpd-alpine/)

Lighttpd
==========
Lighttpd server on linux alpine.

##### Build using:
docker build -t lighttpd .

##### Run using:
docker run --name lighttpd -d -p 80:80 -v /var/run/php:/var/run/php -v /var/www:/var/www  lighttpd
