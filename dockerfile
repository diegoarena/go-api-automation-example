FROM golang:1.15-alpine

ENV CGO_ENABLED=0

RUN set -ex; \
    apk update; \
    apk add --no-cache git

CMD cd /home/test & go test -v ./... -testify.m TestGetUser
