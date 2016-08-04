#!/usr/bin/bash

echo "Setting time zone to ${TIMEZONE=UTC}"
timedatectl set-timezone ${TIMEZONE}
timedatectl status

while : ; do
    date
    sleep 60
done
