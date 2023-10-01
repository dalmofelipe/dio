#!/bin/bash

echo "Atualizando sistema"

apt-get update -y

apt-get upgrade -y

apt-get install apache2 unzip wget -y

cd /tmp

echo "Baixando aplicação"

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

unzip main.zip

cd linux-site-dio-main

cp -R * /var/www/html
