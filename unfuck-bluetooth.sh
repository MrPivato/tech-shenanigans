#!/bin/bash

if [[ $(/usr/bin/id -u) -ne 0 ]]; then
    echo "Not running as root"
    exit
fi

rfkill block bluetooth
rfkill unblock bluetooth
systemctl stop bluetooth.service
systemctl start bluetooth.service
rmmod btusb
modprobe btusb
systemctl restart bluetooth