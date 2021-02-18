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
rm -f /tmp/go.tar.gz

echo '' >> $HOME/.zshrc
echo '#### Golang enviroment variable' >> $HOME/.zshrc
echo 'export GOPATH=$HOME/go/' >> $HOME/.zshrc
echo 'export GOBIN=/usr/local/go/bin' >> $HOME/.zshrc
echo 'export PATH=$PATH:$GOBIN' >> $HOME/.zshrc
echo 'export GOPROXY=direct' >> $HOME/.zshrc

export GOPATH=$HOME/go/
export GOBIN=/usr/local/go/bin
export PATH=$PATH:$GOBIN
export GOPROXY=direct

sudo chmod -R 777 /usr/local/go
