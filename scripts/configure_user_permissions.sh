#!/bin/sh

echo "-------------------------------------"
echo "Add docker permission to $USER"
echo "-------------------------------------"
sudo groupadd docker
sudo gpasswd -a $USER docker
newgrp docker