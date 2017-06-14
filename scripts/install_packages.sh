#!/bin/sh

echo "----------------"
echo "Updating system!"
echo "----------------"
sudo apt update && apt -y upgrade

echo "-------------------------------------"
echo "Installing basic applications"
echo "-------------------------------------"
sudo apt-get install \ 
    apt-transport-https \
    ca-certificates \
    gnupg2 \
    software-properties-common \
    git \
    curl \
    vim \
    tmux \
    zsh \
    terminator

echo "----------------"
echo "Add VS Code repository!"
echo "----------------"
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

echo "----------------"
echo "Installing VS Code"
echo "----------------"
sudo apt-get update
sudo apt-get -y install code

echo "-------------------------------------"
echo "Installing oh-my-zsh"
echo "-------------------------------------"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "-------------------------------------"
echo "Installing Google Chrome"
echo "-------------------------------------"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P /tmp
sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb

echo "----------------"
echo "Add Docker repository"
echo "----------------"
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

echo "----------------"
echo "Installing Docker"
echo "----------------"
sudo apt-get update
sudo apt-get install docker-ce