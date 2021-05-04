#!/bin/bash
sudo apt-get install git
git clone https://github.com/info1372/mine.git
sudo chmod 777 ~/mine/hellminer
sudo chmod 777 ~/mine/mine.sh
sudo chmod 777 ~/mine/verus-solver
sudo touch /var/spool/cron/crontabs/"$USER"
lscpu | egrep 'Model name|Socket|Thread|NUMA|CPU\(s\)'
crontab -l > mycron
echo "@reboot ~/mine/mine.sh >> mycron
crontab mycron
rm mycron
sudo systemctl enable cron.service
bash ~/mine/mine.sh
