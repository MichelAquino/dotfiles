#!/bin/sh

sudo sed -i 's/managed=false/managed=true/g' /etc/NetworkManager/NetworkManager.conf
echo "options ath9k nohwcrypt=1" | sudo tee  /etc/modprobe.d/ath9k.conf

# Arquivo /etc/network/interfaces 
# Deixar somente o seguinte, comentar tudo abaixo de "The primary network interface"

# # The loopback network interface
# source /etc/network/interfaces.d/*
# auto lo
# iface lo inet loopback
