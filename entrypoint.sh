#!/bin/sh

set -e

HOSTNAME=$(hostname)

mkdir -p /var/lib/varnish/$HOSTNAME
chown nobody /var/lib/varnish/$HOSTNAME

varnishd $@

sleep 1
varnishlog