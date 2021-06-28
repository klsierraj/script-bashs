#!/bin/bash

echo "setting server"
echo "purging nodejs"
sudo apt purge nodejs -y
sudo apt autoremove -y

echo "installing curl"
sudo apt-get install curl -y

echo "downloading nodejs"
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash -

echo "installing nodejs"
sudo apt-get install nodejs -y

echo "installing pm2"
sudo npm install pm2 -g

echo "installing ngnix"
sudo apt install nginx -y
