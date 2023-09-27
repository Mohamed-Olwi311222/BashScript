#!/bin/bash
# method 1

#while read line
#do
#	echo $line
#	sleep 1
#done < input.sh

#method 2
#cat input.sh | while read line
#do
#	echo $line
#	sleep 1
#done

#method 3

cat input.sh | while IFS=" " read -r line
do
	echo $line
	sleep 1
done
