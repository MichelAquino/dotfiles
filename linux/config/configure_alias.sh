#!/bin/sh

touch "$HOME/.zshrc"
{
    echo ""
    echo "################ Alias ################"
    echo "alias tf='terraform'"
    echo "alias randomString='openssl rand -base64 32'"
    echo "alias removeAllDockerContainers='docker stop \$(docker ps -a -q) && docker rm \$(docker ps -a -q)'"
    echo "alias removeAllDockerImages='docker rmi \$(docker images -q)'"
    echo "alias dstop='docker stop \$(docker ps -a -q)'"
    echo "alias removeUnusedDockerImage='docker rmi -f $(docker images | grep \"<none>\" | awk "{print \$3}'"
} >> "$HOME/.zshrc"
