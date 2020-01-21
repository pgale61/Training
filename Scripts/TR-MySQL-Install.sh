#!/bin/bash
 
sudo apt-get update

echo 'mysql-server-5.7 mysql-server/root_password password root' > /var/tmp/dss.1
echo 'mysql-server-5.7 mysql-server/root_password_again password root' > /var/tmp/dss.2
sudo debconf-set-selections /var/tmp/dss..1
sudo debconf-set-selections /var/tmp/dss..2

sudo apt-get -y install mysql-server-5.7
