#!/usr/bin/bash

# Default to UTC if no TZ env variable is set
echo "Setting time zone to ${TZ=UTC}"
# This only works on Debian-based images
ln -fs "/usr/share/zoneinfo/${TZ}" /etc/localtime
dpkg-reconfigure tzdata

# Replace this below with your own application start
# It just idles in this example.
while : ; do
    date
    sleep 60
done
