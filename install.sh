#!/bin/bash
sudo apt-get install git
git clone https://github.com/info1372/mine.git
cd mine
sudo chmod 775 mine.sh
sudo chmod 775 hellminer
sudo chmod 775 verus-solver
sudo chmod 775 install.sh
sudo touch /var/spool/cron/crontabs/"$USER"
crontab -l > mycron
echo "@reboot /"$USER"/mine/./mine.sh" >> mycron
crontab mycron
rm mycron
sudo systemctl enable cron.service
./mine.sh
