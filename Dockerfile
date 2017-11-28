FROM alpine:3.6

MAINTAINER Oscar Sanchez - Dev Lusaja <janoone52@gmail.com>

RUN apk add --update curl apache2-utils && rm -rf /var/cache/apk/*

ENTRYPOINT [ "ab" ]