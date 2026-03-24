# Linux Troubleshooting Runbook

## Target Service / Process
`docker`

## Enviroment Basics
<!-- name of command - Explanation -->
- `uname -a` - to see the kernel version and architecture
- `cat /etc/os-release` - to check the Linux distribution and version
- `lsb_release -a` - alternative to check Linux distribution details
![alt text](image.png)

## Snapshot: CPU & Memory
- `top` - to monitor real-time CPU and memory usage of processes
![alt text](image-1.png)
- `htop` - an interactive process viewer for more detailed insights
![alt text](image-2.png)
- `free -h` - to check overall memory usage and availability
![alt text](image-3.png)
- `ps -o pid,pcpu,pmem,comm -p 295` - to check CPU and memory usage of the `docker` process
![alt text](image-4.png)

## Snapshot: Disk & IO
- `df -h` - to check disk space usage
![alt text](image-5.png)
- `du -sh /var/log` - to check the size of log files
![alt text](image-6.png)

## Network
- `ss -tulpn` - to check listening ports and associated processes
![alt text](image-7.png)
- `curl -I http://localhost:80` - to check if the web service is responding

## Logs Reviewed
- `journalctl -u docker -n 50` - to review the last 50 lines of Docker logs
![alt text](image-8.png)
- `tail -n 50 /var/log/syslog` - to check for any system-level errors
![alt text](image-9.png)

## Quick Findings
- Docker is running with moderate CPU and memory usage.
- Disk space is sufficient, but log files are growing rapidly.
- No critical errors found in the recent logs.
