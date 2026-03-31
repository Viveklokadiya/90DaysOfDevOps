#!/bin/bash


greet(){
	local name=$1
	echo "Hello $name"	
}

add(){
	local sum=$(($1 + $2))
	echo "$sum"
}

greet "vivek"
add 2 3
