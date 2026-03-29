#!/bin/bash
#

read -p "Enter Filwe Name" FILE

if [ -f $FILE ]; then
	echo "File Exists"
else
	echo "Not Found 😘😘"
fi