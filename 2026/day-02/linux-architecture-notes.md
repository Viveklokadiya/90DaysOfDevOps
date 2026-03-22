# Linux Architecture Notes

## Core Components of Linux
Linux rchitecture : ASK
- **Applications**: User-facing programs and services
- **Shell** : it is the middle layer btwn Kernel and user space
- **Kernel** : the core component that manages hardware, memory, and processes

# all things in Linux is Either a file or a process

# What is systemd?
 - it is a system's first process that starts when the system boots up
 - it is responsible for initializing the system, managing services, and handling system resources

# systemctl: 
- used to control the services 
- `systemctl start <service>`: Start a service
- `systemctl stop <service>`: Stop a service
- `systemctl restart <service>`: Restart a service
- `systemctl status <service>`: Check the status of a service
## Process States in Linux
- **Running (R)**: Currently executing on CPU
- **Sleeping (S)**: Waiting for an event or resource
- **Zombie (Z)**: Process terminated but parent hasn't cleaned it up
- **Stopped (T)**: Suspended by a signal

## Daily Commands
- `ps aux`: List all running processes
- `top`: Monitor real-time process and system resource usage
- `systemctl list-units --type=service`: List all services
- `journalctl -u <service>`: View service logs
- `kill <PID>`: Terminate a process by ID


