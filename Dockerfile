FROM golang

MAINTAINER Nick Pratley <nick@npratley.net>

EXPOSE 179

RUN go get -v github.com/osrg/gobgp/cmd/gobgpd && go get -v github.com/osrg/gobgp/cmd/gobgp

RUN mkdir /etc/gobgp

WORKDIR /go

CMD gobgpd -f /etc/gobgp/gobgp.conf -p > /etc/gobgp/log & sh /etc/gobgp/routes.sh
