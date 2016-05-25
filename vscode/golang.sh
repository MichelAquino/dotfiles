#!/bin/sh
# Get the Vscode plugins to Golang

echo "Installing github.com/golang/lint/golint..."
go get -u github.com/golang/lint/golint

echo "Installing github.com/rogpeppe/godef..." 
go get -u github.com/rogpeppe/godef

echo "Installing github.com/derekparker/delve/cmd/dlv..."
go get -u github.com/derekparker/delve/cmd/dlv

echo "Installing github.com/nsf/gocode..."
go get -u github.com/nsf/gocode

echo "Installing github.com/tpng/gopkgs..."
go get -u github.com/tpng/gopkgs

echo "Installing github.com/newhook/go-symbols..."
go get -u github.com/newhook/go-symbols

echo "Installing golang.org/x/tools/cmd/godoc..."
go get -u golang.org/x/tools/cmd/godoc
