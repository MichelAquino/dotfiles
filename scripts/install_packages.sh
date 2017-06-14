#!/bin/sh

echo "----------------"
echo "Updating system!"
echo "----------------"
sudo apt update && apt -y upgrade

echo "-------------------------------------"
echo "Installing basic applications"
echo "-------------------------------------"
apt-get install apt-transport-https git curl vim tmux zsh

echo "----------------"
echo "Installing VS Code"
echo "----------------"
apt-get -y install code