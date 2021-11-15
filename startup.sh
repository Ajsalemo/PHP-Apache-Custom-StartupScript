#!/bin/bash

# https://stackoverflow.com/questions/25804911/remove-server-apache-from-response-headers
echo "Installing libapache2-mod-security2.."
apt-get install libapache2-mod-security2 -yy

# Overwrite the default Blessed Image apache2.conf with ours
cp /home/apache2.conf /etc/apache2/apache2.conf

/usr/sbin/apache2ctl -D FOREGROUND
