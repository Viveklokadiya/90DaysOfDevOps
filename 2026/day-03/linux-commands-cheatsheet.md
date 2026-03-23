# Linux Command Cheat Sheet

## ⚙️ Process Management
**Manage system resources, view running tasks, and control process execution.**

| Command | Usage Example | Description |
| :--- | :--- | :--- |
| `ps` | `ps aux` | Display details of all running processes
| `top` | `top` | Display dynamic list of all processes realtime
| `kill` | `lill <Processid>` | Kill Specific Process with id
| `killall` | `killall nginx` | kill all processes of specific app
| `htop` | `htop` | An intractive Colourful Process viewer
| `pkill` | `pkill -u user` | Signals processes based on name or other attributes (e.g., specific user).
| **`bg`** | `bg %1` | Resumes a suspended job in the background. |
| **`fg`** | `fg %1` | Brings a background job to the foreground. |

## 📂 File System
**Navigate directories, manipulate files, and manage permissions.**

| Command | Usage Example | Description |
| :--- | :--- | :--- |
| `ls` | `ls -l` | List files in long format
| `cd` | `cd /var/log` | Change directory
| `cp` | `cp file1.txt file2.txt` | Copy a file
| `mv` | `mv oldname.txt newname.txt` | Move or rename a file
| `rm` | `rm file.txt` | Remove a file
| `mkdir` | `mkdir new_folder` | Create a new directory
| `rmdir` | `rmdir old_folder` | Remove an empty directory
| `chmod` | `chmod 755 script.sh` | Change file permissions
| `chown` | `chown user:group file.txt` | Change file ownership |
| `find` | `find / -name "file.txt"` | Search for files in a directory hierarchy
| `du` | `du -h /var/log` | Estimate file space usage
| `df` | `df -h` | Display disk space usage


## 🌐 Networking Troubleshooting
**Check connectivity, inspect network interfaces, and troubleshoot DNS issues.**

| Command | Usage Example | Description |
| :--- | :--- | :--- |
| `ping` | `ping google.com` | Check connectivity to a host
| `ip addr` | `ip addr show` | Display network interfaces and IP addresses
| `dig` | `dig example.com` | Query DNS information for a domain
| `curl` | `curl -I https://example.com` | Fetch HTTP headers from
| `traceroute` | `traceroute google.com` | Trace the route packets take to a host
| `ss` | `ss -tulpn` | Display socket statistics (listening ports and connections)
| `netstat` | `netstat -tulpn` | Display network connections, routing tables, and interface statistics
| `nslookup` | `nslookup example.com` | Query DNS to find IP address of a domain


