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