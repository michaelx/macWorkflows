#!/bin/bash

# ------------------------------------------------------------------------- #
# DNS Switch
# Author: Michael Xander <http://michaelxander.com> <@michael_xander>
# ------------------------------------------------------------------------- #

# Config
# ----------------------------- #
Google="8.8.8.8, 8.8.4.4"
OpenDNS="208.67.222.222, 208.67.220.220"
mixed="8.8.8.8, 208.67.222.222"
Tunlr="69.197.169.9, 192.95.16.109"
UnoDNS="46.165.219.110"

# DNS Changer
# ----------------------------- #
command=$1

if [ $# -eq 0 ]
then
    echo "Please select a DNS server: Google, Tunlr, UnoDNS"
    read command
fi

if [ $command = "Google" ]
then
    sudo networksetup -setdnsservers Wi-Fi $Google
    dscacheutil -flushcache
elif [ $command = "OpenDNS" ]
then
    sudo networksetup -setdnsservers Wi-Fi $OpenDNS
    dscacheutil -flushcache
elif [ $command = "mixed" ]
then
    sudo networksetup -setdnsservers Wi-Fi $mixed
    dscacheutil -flushcache
elif [ $command = "Tunlr" ]
then
    sudo networksetup -setdnsservers Wi-Fi $Tunlr
    dscacheutil -flushcache
elif [ $command = "UnoDNS" ]
then
    sudo networksetup -setdnsservers Wi-Fi $UnoDNS
    dscacheutil -flushcache
else
    echo "Unkown command provided."
fi