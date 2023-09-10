#!/bin/bash

echo -e "Enter filename: \c"
read -r file_name

if [ -e "$file_name" ];then
    echo "$file_name found"
else
    echo "$file_name not found"
fi