#!/bin/bash
sudo kill -9 $(sudo lsof -t -i:80)
sudo apt install apache2 -y
sudo systemctl restart apache2
sudo apt update
sudo apt install -y mysql-server php libapache2-mod-php php-fpm php-mysql
sudo apt update
sudo apt-get install php7.4 -y
