#!/bin/sh
if [ ! -d $HOME/golang ]; then
    echo "Create folder for Golang projects in $HOME/golang"
    mkdir $HOME/golang
fi

echo "Set GOPATH enviroment variable"

echo '' >> ~/.profile
echo '# Golang enviroment variable' >> ~/.profile

echo 'export GOPATH=$HOME/golang/' >> ~/.profile
echo 'export GOBIN=/usr/local/go/bin' >> ~/.profile
echo 'export PATH=$PATH:$GOBIN' >> ~/.profile

