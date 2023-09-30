#!/bin/bash


x=30
readonly x
echo "x =>$x"

x=50 #will give an error

echo "x =>$x"

echo "-----------------------------------------------------------------------"
hello() {
	echo "Hello World"
}

readonly -f hello

hello

hello() {
	echo "Hello world 2"
}
hello
echo "-----------------------------------------------------------------------"
readonly -p
echo "-----------------------------------------------------------------------"
readonly -f
