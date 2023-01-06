#! /bin/bash

echo "Atualizando o servidor..."

apt update

apt upgrade -y

echo "instalando apache2..."

apt install apache2 -y

echo "instalando unzip"

apt install unzip -y

echo "Baixando aplicação do github no diretorio /tmp..."

cd /tmp

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "descompactando arquivos..."

unzip main.zip

echo "copiando arquivos para o diretorio padrao do apache"

cd /tmp/linux-site-dio-main
cp -R . /var/www




