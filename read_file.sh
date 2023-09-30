#!/bin/bash

n=3

while [ $n -le 3 ]
do
	echo "$n"
	bash &
	(( n++ ))
	sleep 1
done
