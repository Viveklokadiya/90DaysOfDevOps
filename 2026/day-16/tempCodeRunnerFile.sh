#!/bin/bash

read -p "Enter a number :" NUMBER

if [ $NUMBER -gt 0 ] then;
	echo "Number is Positive";
elif [ $NUMBER -lt 0 ] then;
	echo "Number is Negetive";
else 
	echo "Number is Zero";
fi
