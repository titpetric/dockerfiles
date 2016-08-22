FROM golang:1.6.2-alpine

RUN apk update && apk add ca-certificates git && rm -rf /var/cache/apk/* && update-ca-certificates

RUN go get github.com/SlinSo/egon/cmd/egon

WORKDIR /go

ENTRYPOINT ["/go/bin/egon"]

