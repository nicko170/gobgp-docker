#!/bin/sh

gobgpd -f /etc/gobgp/gobgp.conf -p > /etc/gobgp/log &

sh /etc/gobgp/routes.sh

tail -f /dev/null
