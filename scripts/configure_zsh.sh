#!/bin/sh

echo "-------------------------------------"
echo "Installing oh-my-zsh"
echo "-------------------------------------"

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "Set oh-my-zsh config"
mv ../zsh/zshrc ~/