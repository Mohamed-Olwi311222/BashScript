#!/bin/bash

trap "echo signal recieved" SIGINT SIGCONT 
echo "PID is $$"

n=0
while (( n < 10 ))
do
	echo "$n"
	sleep 10
done
