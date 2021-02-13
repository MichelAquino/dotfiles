#!/bin/bash
echo "-------------------------------------"
echo "Installing Golang"
echo "-------------------------------------"

VERSION="1.15.8"
GOLANG_FILE="go$VERSION.linux-amd64.tar.gz"

if [ -d "$HOME/go" ]; then
    echo "Installation directories already exist. Exiting."
    exit 1
fi

echo "Downloading $GOLANG_FILE ..."
wget https://golang.org/dl/$GOLANG_FILE -O /tmp/go.tar.gz
if [ $? -ne 0 ]; then
    echo "Download failed! Exiting."
    exit 1
fi

echo "Extracting ..."
sudo tar -C /usr/local -xzf /tmp/go.tar.gz
touch "$HOME/.zshrc"
{
    echo ''
    echo '#### Golang enviroment variable'
    echo 'export GOPATH=$HOME/go/'
    echo 'export GOBIN=/usr/local/go/bin'
    echo 'export PATH=$PATH:$GOBIN'
    echo 'export GOPROXY=direct'
} >> "$HOME/.zshrc"

rm -f /tmp/go.tar.gz

source $HOME/.zshrc
sudo chmod -R 777 /usr/local/go
