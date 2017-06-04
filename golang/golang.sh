#!/bin/sh
if [ ! -d $HOME/go ]; then
    echo "Create folder for Golang projects in $HOME/go"
    mkdir $HOME/go
fi

echo "Set GOPATH enviroment variable"

echo '' >> ~/.zshrc
echo '# Golang enviroment variable' >> ~/.zshrc

echo 'export GOPATH=$HOME/go/' >> ~/.zshrc
echo 'export GOBIN=/usr/local/go/bin' >> ~/.zshrc
echo 'export PATH=$PATH:$GOBIN' >> ~/.zshrc

