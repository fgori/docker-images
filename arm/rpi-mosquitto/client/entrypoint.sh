#!/bin/bash
trap ctrl_c INT

function ctrl_c() {
	printf "\nterminated\n"
	exit 0
}

echo "Command: ${@}"

if [ -z "$1" ]
then
	while true
	do
		sleep 1
	done
else 
	"${@}"
fi