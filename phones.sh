#!/bin/bash

trim(){
	echo "$1" | sed 's/[^a-zA-Z0-9]//g'
}


echo -e "Enter the filename that contains  Phone Numbers you want to compare to: \c"
read -r static_phones

echo -e "Enter the filename that contains the phone numbers to compare to the previous ones: \c"
read -r new_phones

echo -e "Enter the filename to store the output of this operation to(it will append to it): \c"
read -r output

if ! [ -s "$static_phones" ]; then
	echo " $static_phones doesnt exist as a non empty file"
	exit 1 
elif ! [ -s "$new_phones" ]; then
	echo " $new_phones doesnt exist as a non empty file"
	exit 1
fi

if ! [ -f "$output" ]; then
	echo "A file named $output has been made to store the output"
	touch "$output"
fi
#The core of the script
#it will use grep command to search for each line in static_phones file to see if it exist in new_phones file
while IFS= read -r line ; do
	trimed_line=$(trim "$line")

	if grep -q "$trimed_line" "$new_phones"; then
		continue
	else
		echo "$trimed_line" >> "$output"
	fi
			
	
done < "$static_phones"

