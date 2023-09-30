#!/bin/bash

n=0
array=('')
echo "Putting all numbers from 0 to 10 in an array"
while [ $n -le 10 ]
do
	echo $n
	array[ $n ]=$n
	(( n++ ))
done

echo "======================================================"
echo "index[0] is: ${array[0]}"
echo "======================================================"
sleep 1
echo "All elements are: ${array[@]}"
echo "======================================================"
sleep 1
echo "All indeces are: ${!array[@]}"
echo "======================================================"
sleep 1
echo "Length of the array is: ${#array[@]}"
echo "======================================================"
