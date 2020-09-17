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

OPTIONS="--all --target --quit"
select opt in $OPTIONS; do
	if [ "$opt" = "--quit" ]; then
		echo Good Bye!
		exit
	elif [ "$opt" = "--all" ]; then
		ping_cycle
	elif [ "$opt" = "--target" ]; then
		echo Enter IP
		read IP
		sudo nmap $IP
	else
		echo bad option
	fi
done


