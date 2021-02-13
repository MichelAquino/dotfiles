#!/bin/sh

sudo sed -i 's/managed=false/managed=true/g' /etc/NetworkManager/NetworkManager.conf
echo "options ath9k nohwcrypt=1" | sudo tee  /etc/modprobe.d/ath9k.conf