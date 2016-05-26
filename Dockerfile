FROM alpine:3.3
MAINTAINER Jeffrey Boehm "jeff@ressourcenkonflikt.de"

RUN apk add --update znc && rm -rf /var/cache/apk/*
RUN adduser zncrun -u 2000 -D -H

ADD entrypoint.sh /entrypoint.sh
ADD znc.conf.default /znc.conf.default
RUN mkdir /znc-data && chown zncrun /znc-data

VOLUME /znc-data

EXPOSE 6667 8080

USER zncrun
ENTRYPOINT ["/entrypoint.sh"]
