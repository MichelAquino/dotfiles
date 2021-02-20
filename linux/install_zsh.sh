#!/bin/sh

echo "-------------------------------------"
echo "Installing oh-my-zsh"
echo "-------------------------------------"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "-------------------------------------"
echo "Set oh-my-zsh config"
echo "-------------------------------------"

# Set theme
sed -i 's/"robbyrussell"/"risto"/g' ~/.zshrc

echo "" >> $HOME/.zshrc
echo "################ Alias ################" >> $HOME/.zshrc
echo "alias tf='terraform'" >> $HOME/.zshrc
echo "alias randomString='openssl rand -base64 32'" >> $HOME/.zshrc
echo "alias removeAllDockerContainers='docker stop \$(docker ps -a -q) && docker rm \$(docker ps -a -q)'" >> $HOME/.zshrc
echo "alias removeAllDockerImages='docker rmi \$(docker images -q)'" >> $HOME/.zshrc
echo "alias dstop='docker stop \$(docker ps -a -q)'" >> $HOME/.zshrc
echo "alias removeUnusedDockerImage='docker rmi -f \$(docker images | grep \"<none>\" | awk {print \$3})'" >> $HOME/.zshrc
