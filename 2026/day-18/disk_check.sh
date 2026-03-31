#!/bin/bash

check_disk(){
	echo "Storage Info"
	df -h
}

check_memory(){
	echo "Memory Info"
	free -h
}

main() {
    echo "System Health Check"
    echo "-------------------"
    
    check_disk
    check_memory
}

main
