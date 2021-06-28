#!/bin/bash

echo "Stop and delete all pm2 process"
pm2 delete all

echo "install dependencies api"
cd /home/ubuntu/agendapp-api
npm install 


echo "start pm2 process"
pm2 start npm --name agendapp-api -- run prod

echo "save pm2 process deamon"
pm2 save