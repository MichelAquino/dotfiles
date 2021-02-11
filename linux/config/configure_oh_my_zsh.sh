#!/bin/sh

echo "-------------------------------------"
echo "Set oh-my-zsh config"
echo "-------------------------------------"

# Export env vars
touch "$HOME/.zshrc"
{
    echo ''
    echo '#### Projects'
    echo 'export GITHUB_GO=$GOPATH/src/github.com/michelaquino'
} >> "$HOME/.zshrc"

# Set theme
sed -i 's/"robbyrussell"/"risto"/g' ~/.zshrc

# Reload
source ~/.zshrc