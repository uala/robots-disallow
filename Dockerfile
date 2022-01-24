FROM golang:1.17-alpine

RUN apk add --no-cache \
    git \
    openssh-client

WORKDIR /go/src/app

COPY . /go/src/app

RUN go env -w GO111MODULE=auto
RUN go get -v && \
    go install

ENTRYPOINT ["app"]
