#!/bin/sh

echo "----------------"
echo "Updating system!"
echo "----------------"
sudo apt update && apt -y upgrade

echo "-------------------------------------"
echo "Installing applications"
echo "-------------------------------------"

echo "Installing curl"
sudo apt-get -y install curl

echo "Installing vim"
sudo apt-get -y install vim

echo "Installing tmux"
sudo apt-get -y install tmux 

echo "Installing VS Code"
sudo apt-get -y install code

echo "Installing zsh"
sudo apt-get -y install zsh

echo "Installing Docker"
sudo apt-get install \
     apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common \
     docker-ce

echo "Installing Docker Compose"
sudo -i
curl -L https://github.com/docker/compose/releases/download/1.13.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
exit
