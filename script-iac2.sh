#!/bin/bash

#Neste projeto iremos criar um script onde será provisionado um servidor web automaticamente. 
#Um servidor web é um software e hardware que usa HTTP (Hypertext Transfer Protocol)
#e outros protocolos para responder a solicitações de clientes feitas pela World Wide Web. 
#O principal trabalho de um servidor da web é exibir o conteúdo do site por meio do armazenamento, processamento e entrega de páginas da web aos usuários.

echo "Atualizando o servidor..."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y


echo "Baixando e copiando os arquivos da aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/
