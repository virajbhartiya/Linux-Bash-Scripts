#!/bin/sh

echo "Updating and Updrading the System... "

sudo apt update > /dev/null
sudo apt upgrade -y > /dev/null
echo "Updated and Upgraded"

echo "Installing Nodejs and npm..."
sudo apt install nodejs npm > /dev/null
echo "Node and npm installed" 

curl -sSfL https://repo.homebridge.io/KEY.gpg | sudo gpg --dearmor | sudo tee /usr/share/keyrings/homebridge.gpg  > /dev/null
echo "deb [signed-by=/usr/share/keyrings/homebridge.gpg] https://repo.homebridge.io stable main" | sudo tee /etc/apt/sources.list.d/homebridge.list > /dev/null
echo "Added the homebridge repo"
echo "Install Homebridge..."
sudo apt-get update > /dev/null
sudo apt-get install homebridge -y
echo "Homebridge installed"

echo "Installing Catayst"
git clone https://github.com/virajbhartiya/Catalyst > /dev/null
mv ./Catalyst ~/Desktop/Catalyst > /dev/null
cd ~/Desktop/Catalyst > /dev/null
npm i > /dev/null
(crontab -l ; echo "@reboot node /home/pi/Desktop/Catalyst/index.js") | sort - | uniq - | crontab -
echo "Added Catalyst to corntab"
