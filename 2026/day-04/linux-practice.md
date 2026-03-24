# Day-4 Linux Practice
## Overview
This is a hands on Pracice day to build muscle memory with Linux fundamentals.

Enviroment: Utho cloud Linux VM

## Process Commands 

### 1. `ps aux` - List all running processes with detailed information.
![alt text](image.png)

### 2.  `pgrep ssh` - Search for processes related to SSH.
![alt text](image-1.png)
all the processes run by ssh

## Service Commands
### 1. `systemctl status ssh` - Check the status of the SSH service.
![alt text](image-2.png)

### 2. `systemctl list-units --type=service` - List all active services.
![alt text](image-3.png)


## Log Commands
### 1. `journalctl -u cron` - View logs for the cron service.
![alt text](image-4.png)

### 2. `tail -n 50 /var/log/syslog` - View the last 50 lines of the system log.
![alt text](image-5.png)