FROM golang:1.8-alpine

MAINTAINER Tit Petric <black@scene-si.org>

## install needed packages
RUN	apk --no-cache add gcc musl-dev git graphviz

## add external get packages
RUN	echo "installing gvt" && go get -u github.com/FiloSottile/gvt && \
	echo "installing glide" && go get -u github.com/Masterminds/glide && \
	echo "installing errcheck" && go get -u github.com/kisielk/errcheck && \
	echo "installing golint" && go get -u github.com/golang/lint/golint && \
	echo "installing goreleaser" && go get -u github.com/goreleaser/goreleaser && \
	echo "installing go-bindata" && go get -u github.com/jteeuwen/go-bindata/...

WORKDIR /go/src/app