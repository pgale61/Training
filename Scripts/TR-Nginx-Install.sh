#!/bin/sh
 
sudo apt-get purge nginx nginx-common nginx-full

sudo apt-get update
sudo apt-get install nginx -y
sudo apt-get install -y python-setuptools python-pip

pip install jinja2
