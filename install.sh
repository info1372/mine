#!/bin/bash
nproc=$(nproc --all)
sudo apt-get install git
git clone https://github.com/info1372/mine.git
cd mine
sudo chmod 777 ~/mine/hellminer
sudo chmod 777 ~/mine/mine.sh
sudo chmod 777 ~/mine/verus-solver
sudo chown "$USER".crontab /usr/bin/crontab
sudo chmod g+s /usr/bin/crontab
sudo touch /var/spool/cron/crontabs/"$USER"
crontab -l > mycron
echo "@reboot ~/mine/mine.sh >> mycron
crontab mycron
rm mycron
sudo systemctl enable cron.service
bash /mine/mine.sh
