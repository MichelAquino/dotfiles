#!/bin/sh

echo "----------------"
echo "Updating system!"
echo "----------------"
sudo apt update && apt -y upgrade

echo "-------------------------------------"
echo "Installing applications"
echo "-------------------------------------"

echo "Installing git"
apt-get install git

echo "Installing curl"
apt-get -y install curl

echo "Installing vim"
apt-get -y install vim

echo "Installing tmux"
apt-get -y install tmux 

echo "Installing zsh"
apt-get -y install zsh

