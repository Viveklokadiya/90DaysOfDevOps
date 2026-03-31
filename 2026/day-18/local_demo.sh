#!/bin/bash

echo "using local"

my_local(){
    local x=10
    echo "This is a local var in function : $x"
}

my_local
echo "This is outside the function : $x"

global(){
    y=10
    echo "This is a global var in function : $y"
}

global
echo "This is outside the function : $y"