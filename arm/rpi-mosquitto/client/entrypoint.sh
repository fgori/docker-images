#!/bin/bash
trap ctrl_c INT

function ctrl_c() {
	printf "\nterminated\n"
	exit 0
}

while true
do
	sleep 1
done
