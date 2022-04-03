FROM alpine:3.13

RUN apk add openssh-client lftp

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
