#!/bin/sh
# Get the Vscode plugins to Golang

echo "Installing golang.org/x/tools/cmd/godoc..."
go get -u -v golang.org/x/tools/cmd/godoc

echo "Installing github.com/derekparker/delve/cmd/dlv..."
go get -u -v github.com/derekparker/delve/cmd/dlv

echo "Installing github.com/nsf/gocode..."
go get -u -v github.com/nsf/gocode

echo "Installing github.com/rogpeppe/godef..."
go get -u -v github.com/rogpeppe/godef

echo "Installing github.com/golang/lint/golint..."
go get -u -v github.com/golang/lint/golint

echo "Installing github.com/lukehoban/go-outline..."
go get -u -v github.com/lukehoban/go-outline

echo "Installing sourcegraph.com/sqs/goreturns..."
go get -u -v sourcegraph.com/sqs/goreturns

echo "Installing golang.org/x/tools/cmd/gorename..."
go get -u -v golang.org/x/tools/cmd/gorename

echo "Installing github.com/tpng/gopkgs..."
go get -u -v github.com/tpng/gopkgs

echo "Installing github.com/newhook/go-symbols..."
go get -u -v github.com/newhook/go-symbols

echo "Installing golang.org/x/tools/cmd/guru..."
go get -u -v golang.org/x/tools/cmd/guru

echo "Installing golang.org/x/tools/cmd/goimports..."
go get -u -v golang.org/x/tools/cmd/goimports
