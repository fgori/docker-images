#!/bin/bash
trap ctrl_c INT

service mosquitto start

function ctrl_c() {
	printf "\nterminated\n"
	exit 0
}

while true
do
	sleep 1
done
