#!/bin/bash

# ------------------------------------------------------------------------- #
# Apache + MySQL Control Script
# Author: Michael Xander <http://michaelxander.com> <@michael_xander>
# ------------------------------------------------------------------------- #

command=$1

if [ $# -eq 0 ]
then
    echo "Please provide a command: start, restart, stop"
    read command
fi

if [ $command = "start" -o $command = "restart" -o $command = "stop" ]
then
    mysql.server $command
    sudo apachectl $command
else
    echo "Unkown command provided."
fi