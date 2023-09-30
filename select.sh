#!/bin/bash
n=0
PS3="Select a number from 1 to 10: "
select item in {1..10}
do
	case $item in
	1)
		n=1
	;;
	2)
		n=2
	;;
	3)
		n=3
	;;
	4)
		n=4
	;;
	5)
		n=5
	;;
	6)
		n=6
	;;
	7)
		n=7
	;;
	8)
		n=8
	;;
	9)
		n=9
	;;
	10)
		n=10
	;;
	*)
		echo "Invalid number"
	;;
	esac
	for (( i=0; i < n; i++ ))
	do
		echo $i
		sleep 1
	done
done
