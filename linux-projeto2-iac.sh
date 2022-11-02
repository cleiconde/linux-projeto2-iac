#!/bin/bash

echo -e "Atualizando o servidor.\nInstalando o Apache e Unzip."
apt update -qq && sudo apt upgrade -qq -y && sudo apt install apache2 unzip -qq -y

echo -e "\nFazendo o download dos arquivos do site"
wget -P /tmp http://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo -e "\nDescompactando o .zip no diretório /tmp"
unzip -qq /tmp/main.zip -d /tmp

echo -e "\nCopiando os arquivo para o diretório do Apache"
cp -r /tmp/linux-site-dio-main/* /var/www/html
