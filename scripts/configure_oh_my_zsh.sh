#!/bin/sh

echo "-------------------------------------"
echo "Set oh-my-zsh config"
echo "-------------------------------------"

rm /home/michel/.zshrc
cp zsh/zshrc /home/michel/.zshrc
source /home/michel/.zshrc
