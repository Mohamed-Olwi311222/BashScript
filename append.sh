#!/bin/bash
#script to append to a file

echo -e "The name of the file to append to: \c"
read file_name

#check if file exists and not a directory

if [ -f "$file_name" ]; then

	#check if its writable
	if [ -w "$file_name" ]; then
		echo "Type the data you want(press ctrl + d to exit)"
		cat >> "$file_name"
	else
		echo "The file doesnt have Write permission"
	fi

else
	echo "File doesnt exist"
fi
