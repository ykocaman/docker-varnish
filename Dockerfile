FROM alpine:3.8

RUN apk add --no-cache varnish

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]