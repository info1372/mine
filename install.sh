#!/bin/bash
sudo apt-get install git
git clone https://github.com/info1372/mine.git
cd mine
sudo chmod +x mine.sh
sudo chmod +x hellminer
sudo chmod +x verus-solver
touch /var/spool/cron/crontabs/"$USER"
crontab -l > mycron
echo "@reboot /"$USER"/mine/./mine.sh" >> mycron
crontab mycron
rm mycron
sudo systemctl enable cron.service
./mine.sh
