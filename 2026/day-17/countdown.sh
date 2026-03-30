#!/bin/bash

read -p "Enter Number: " num

while [ $num -ge 0 ]; do
	echo "Count is $num"
	((num--))
done

echo "Done!!"
	