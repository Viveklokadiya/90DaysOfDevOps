#!/bin/bash


./log_rotate.sh /var/log/nginx /home/user/backups > /var/log/maintenance.log 2>&1

./backup.sh /home/user/data /home/user/backups >> /var/log/maintenance.log 2>&1

