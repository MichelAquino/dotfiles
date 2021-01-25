#!/bin/sh

echo "----------------"
echo "Set VS Code user config"
echo "----------------"
cp vscode/keybindings.json $HOME/.config/Code/User
cp vscode/settings.json $HOME/.config/Code/User

echo "----------------"
echo "VS Code to Golang tools"
echo "----------------"
go get -u -v golang.org/x/tools/cmd/godoc
go get -u -v github.com/derekparker/delve/cmd/dlv
go get -u -v github.com/nsf/gocode
go get -u -v github.com/rogpeppe/godef
go get -u -v github.com/golang/lint/golint
go get -u -v github.com/lukehoban/go-outline
go get -u -v sourcegraph.com/sqs/goreturns
go get -u -v golang.org/x/tools/cmd/gorename
go get -u -v github.com/tpng/gopkgs
go get -u -v github.com/newhook/go-symbols
go get -u -v golang.org/x/tools/cmd/guru
go get -u -v golang.org/x/tools/cmd/goimports
go get -u github.com/motemen/gore/cmd/gore
go get -u github.com/stamblerre/gocode
go get -u github.com/cweill/gotests/...
go get -u github.com/fatih/gomodifytags
GO111MODULE=on go get golang.org/x/tools/gopls@latest
