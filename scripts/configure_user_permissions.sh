#!/bin/sh

echo "-------------------------------------"
echo "Add docker permission to $USER"
echo "-------------------------------------"
sudo usermod -aG docker $USER