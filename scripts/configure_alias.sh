#!/bin/sh

touch "$HOME/.zshrc"
{
    echo ""
    echo "################ Alias ################"
    echo "alias randomString='openssl rand -base64 32'"
    echo "alias removeAllDockerContainers='docker rm $(docker ps -a -q)'"
    echo "alias removeAllDockerImages='docker rmi $(docker images -q)'"
} >> "$HOME/.zshrc"
