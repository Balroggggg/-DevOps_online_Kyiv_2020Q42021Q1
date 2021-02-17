#!/bin/bash

if  [[ ! -n "$1" ]]
then
	echo "Key list:"
	echo "--all - displays the IP addresses and symbolic names of all hosts in the current subnet"
	echo "--target - key displays a list of open system TCP ports"
fi

function showIPandSymbNamesInSubnet {
        echo "IP address        Host"
        cat /etc/hosts | grep '^[0-9]'
}

function listOpenTcpPorts {
	ss -tlwn | grep LISTEN
}


while [ -n "$1" ]
do
case "$1" in
--all) showIPandSymbNamesInSubnet ;;
--target) listOpenTcpPorts ;;
*) echo "$1 is not a key";;
esac
shift
done




