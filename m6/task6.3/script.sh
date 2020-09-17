#!/bin/bash

is_alive_ping()
{
	ping -c 1 $1 > /dev/null
	[ $? -eq 0 ] && echo IP: $i is up.
}

ping_cycle()
{
	for i in 10.10.10.{1..255}
	do
	is_alive_ping $i & disown
	done
}

if [ $# -eq 0 ]; then
	echo "No arguments has been provided! please, use --all or --target"
else
while test $# -gt 0
do
	case "$1" in 
		--all) ping_cycle
			;;
		--target) read IP && sudo nmap $IP
			;;
		*) echo "invalid option $1! please, use --all or --target "
			;;
	esac
	shift
done
exit 0
fi

