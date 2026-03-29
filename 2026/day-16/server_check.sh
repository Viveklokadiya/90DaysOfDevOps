#!/bin/bash
#

service="nginx"

read -p "Do you want to check the status? (y/n)" status

if [ $status==y ]; then
	systemctl status nginx
else
	echo "Skipped"
fi
