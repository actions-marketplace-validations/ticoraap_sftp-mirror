FROM alpine:3.15

RUN apk add openssh-client lftp

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
