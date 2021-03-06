#!/usr/bin/env bash
### every exit != 0 fails the script
set -e

echo "Install IceWM UI components and disable xfce-polkit"

yum -y install xorg-x11-fonts* xulrunner icewm
yum -y groupinstall "Fonts"
yum clean all
/bin/dbus-uuidgen > /etc/machine-id