#!/bin/bash 

echo "Atualizando sistema"
apt-get update
apt-get upgrade -y

echo "Instalando Apache"
apt install apache2 -y

echo "Instalando Unzip"
apt install unzip -y


echo "Download arquivo"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

cd linux-site-dio-main
cp -R * /var/www/html/


echo "Finalizado"
