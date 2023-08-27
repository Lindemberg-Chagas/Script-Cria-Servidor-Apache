#!/bin/bash

echo "Iniciando Atualização!"
apt update -y
apt upgrade -y

echo "Instalando Programas"
apt install unzip -y
apt install git -y
apt install apache2 -y

echo "Clone Projeto"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html


