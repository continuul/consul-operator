FROM alpine:3.6

RUN apk add --no-cache ca-certificates

ADD consul-operator /usr/local/bin/consul-operator

RUN adduser -D consul-operator
USER consul-operator
