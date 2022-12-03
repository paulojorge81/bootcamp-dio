#!/bin/bash

echo "########## instalando dependencias ##########"
echo "##### atualizando o sistema #####"

apt update && apt upgrade -y

echo "##### instalando o servidor apache e o unzip #####"

apt install apache2 unzip -y

echo "########## baixando aplicacao e adicionando ao sevidor apache ##########"

cd /tmp
wget -qO- https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip | busybox unzip -
cd linux-site-dio-main
cp -R * /var/www/html
