#!/bin/bash
sudo apt install apache2 -y
sudo chown ubuntu /etc/apache2/ports.conf
sudo chmod +w /etc/apache2/ports.conf
sudo sed -i 's/80/88/g' /etc/apache2/ports.
sudo systemctl restart apache2
sudo apt install -y mariadb-server php libapache2-mod-php
sudo apt update
sudo apt install php-fpm -y
sudo apt-get install php7.4 -y
