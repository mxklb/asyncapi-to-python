#!/bin/ash
ag /tmp/python-paho-template/api/$1 @asyncapi/python-paho-template@$2 --force-write
chown 1000:1000 *
chmod 777 *
