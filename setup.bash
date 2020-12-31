#!/bin/bash -xve

sudo apt install -y curl

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
ls -l

ls -l /etc/apt/trusted.gpg.d/
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
ls -l /etc/apt/trusted.gpg.d/

ls /etc/apt/sources.list.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
ls /etc/apt/sources.list.d/
cat /etc/apt/sources.list.d/vscode.list

sudo apt install apt-transport-https

sudo apt update

apt list code
sudo apt list -a code

sudo apt install code
code --version

code
