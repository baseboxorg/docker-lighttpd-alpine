[![](http://dockeri.co/image/notor93/docker-lighttpd-alpine)](https://index.docker.io/u/notor93/docker-lighttpd-alpine/)

Lighttpd
=========
Lighttpd server on linux alpine.

## Build using:
`docker build -t lighttpd .`

`docker run --name lighttpd -d -p 80:80 -v <project-directory>:/var/www  lighttpd`

## Run using:
`docker run --name lighttpd -d -p 80:80 -v <project-directory>:/var/www  notor93/docker-lighttpd-alpine`

## Docker Compose:

Add the following lines in an `docker-compose.yml` file:

    lighttpd:
      image: notor93/docker-lighttpd-alpine
      ports:
        - "<http-port>:80"
      volumes:
        - "<conf-enabled-directory>:/etc/lighttpd/conf-enabled"
        - "<project-directory>:/var/www"
