#!/bin/bash
set -euo pipefail

printhostandos(){
    echo "Hostname : $(hostname)"
    echo "OS : $(uname -o)"
}

printuptime(){
    echo "Uptime : $(uptime -p)"
}

printdiskusagetop5(){
    echo "Top 5 disk usage :"
    df -h | sort -k 5 -r | head -n 6
}

printmemoryusage(){
    echo "Memory usage :"
    free -h
}
printtop5processes(){
    echo "Top 5 processes by CPU usage :"
    ps aux --sort=-%cpu | head -n 6
}

main(){
    printhostandos
    printuptime
    printdiskusagetop5
    printmemoryusage
    printtop5processes
}
main