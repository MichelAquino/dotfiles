#!/bin/sh

echo "-------------------------------------"
echo "Set oh-my-zsh config"
echo "-------------------------------------"

rm $HOME/.zshrc
cp zsh/zshrc $HOME/.zshrc
source $HOME/.zshrc
