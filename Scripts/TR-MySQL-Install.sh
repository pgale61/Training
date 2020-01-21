#!/bin/bash
 
apt-get update

export TERM=linux

echo 'mysql-server-5.7 mysql-server/root_password password root' > /var/tmp/dss.1
echo 'mysql-server-5.7 mysql-server/root_password_again password root' > /var/tmp/dss.2
debconf-set-selections /var/tmp/dss.1
debconf-set-selections /var/tmp/dss.2

apt-get -y install mysql-server-5.7
