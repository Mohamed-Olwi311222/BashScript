#!/bin/bash

hello() {
	echo "Hello, World! $1"
}

quit(){
	for (( i=10; i > 0; i-- ))
	do	
		hello $i
		sleep 1
	done
	exit
}

quit
