FROM alpine:3.17

ARG GH_USER

RUN apk update && apk add curl jq

ADD fetch.sh /usr/bin/fetch.sh

ENTRYPOINT [ "/usr/bin/fetch.sh" ]
