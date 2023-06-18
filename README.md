## Pre-Run
```bash
hostname -I #Get the device IP
sudo nano /etc/dhcpcd.conf
```

```bash
interface wlan0
static_routers=[ROUTER IP]
static domain_name_servers=[ROUTER IP]
static ip_address=[DEVICE IP]/24
```


```bash
crontab -e
```

## Start

```bash
cd Desktop
git clone https://github.com/virajbhartiya/Linux-Bash-Scripts
cd Linux-Bash-Scripts

chmod +x ./Homebridge\ Setup.sh
./Homebridge\ Setup.sh
```
