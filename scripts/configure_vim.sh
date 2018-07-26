#!/bin/sh

cp vim/vimrc $HOME/.vimrc
cp vim/vimrc.local $HOME/.vimrc.local

vim +PlugInstall +qall
