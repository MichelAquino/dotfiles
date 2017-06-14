#!/bin/sh

echo "----------------"
echo "Updating system!"
echo "----------------"
sudo apt update && apt -y upgrade

echo "-------------------------------------"
echo "Installing basic applications"
echo "-------------------------------------"
sudo apt-get install apt-transport-https git curl vim tmux zsh

echo "----------------"
echo "Installing VS Code"
echo "----------------"
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