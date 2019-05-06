FROM golang

MAINTAINER Nick Pratley <nick@npratley.net>

EXPOSE 179

RUN go get -v github.com/osrg/gobgp/cmd/gobgpd && go get -v github.com/osrg/gobgp/cmd/gobgp

RUN mkdir /etc/gobgp

WORKDIR /go

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT /entrypoint.sh
