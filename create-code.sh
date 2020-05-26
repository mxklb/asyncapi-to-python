#!/bin/ash
ag /tmp/python-paho-template/api/$1 @asyncapi/python-paho-template --force-write
chown 1000:1000 *
