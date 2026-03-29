# Networking Fundamentals & Hands-on Checks

## OSI vs TCP/IP Models

### OSI Model
- Application - HTTP, HTTPS, DNS
- Presentation - Data formatting, encryption
- Session- Establishes, manages, and terminates connections
- Transport- TCP, UDP
- Network- IP
- Data Link - Ethernet, Wi-Fi
- Physical- Cables, switches, wireless signals

### TCP/IP Stack
- Application - HTTP, HTTPS, DNS
- Transport - TCP, UDP
- Internet  - IP
- Link - Ethernet, Wi-Fi


## Hands-on Checklist

### Identity
```bash
hostname -I
```
### Reachability
```bash
ping google.com
```
![alt text](image.png)

### Path
```bash
traceroute google.com
```

### Ports
```bash
ss -tulpn
```
![alt text](image-1.png)
### Name resolution
```bash
dig viveklokadiya.dev
```
![alt text](image-2.png)

### HTTP check
```bash
curl -I https://viveklokadiya.dev
```
![alt text](image-3.png)
### Connections snapshot
```bash
netstat -an | head
```
![alt text](image-4.png)

## Mini Task: Port Probe & Interpret

1) Identify one listening port from `ss -tulpn` (e.g., SSH on 22 or a local web app).
![alt text](image-5.png)

2) From the same machine, test it: `nc -zv localhost 80` 
```bash
nc -zv localhost 80
```
![alt text](image-6.png)
3) Is it reachable? Yes, port 80 is open and accepting connections.


