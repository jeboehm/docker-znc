FROM alpine:3.3
MAINTAINER Jeffrey Boehm "jeff@ressourcenkonflikt.de"

RUN apk add --update ca-certificates znc && rm -rf /var/cache/apk/*
RUN adduser zncrun -u 2000 -D -H

ADD entrypoint.sh /entrypoint.sh
ADD znc.conf.default /znc.conf.default
RUN mkdir /znc-data

VOLUME /znc-data

EXPOSE 6667 8080

ENTRYPOINT ["/entrypoint.sh"]
CMD [""]
