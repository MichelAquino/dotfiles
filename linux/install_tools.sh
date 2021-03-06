#!/bin/sh

echo "-------------------------------------"
echo "Installing Thunderbird"
echo "-------------------------------------"
sudo apt install -y thunderbird

echo "-------------------------------------"
echo "Installing Brave"
echo "-------------------------------------"
sudo apt install -y brave-browser

echo "-------------------------------------"
echo "Installing Tor Browser"
echo "-------------------------------------"
sudo apt -y install torbrowser-launcher

echo "----------------"
echo "Installing Spotify"
echo "----------------"
sudo apt install -y spotify-client

echo "----------------"
echo "Installing Mullvad"
echo "----------------"
wget --content-disposition https://mullvad.net/download/app/deb/latest -O /tmp/mullvad.deb
sudo apt -y install gdebi-core && sudo gdebi /tmp/mullvad.deb

echo "----------------"
echo "Installing Slack"
echo "----------------"
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.0.2-amd64.deb -O /tmp/slack-desktop.deb
sudo apt install -y /tmp/slack-desktop.deb

echo "----------------"
echo "Installing Zoom"
echo "----------------"
wget https://zoom.us/client/latest/zoom_amd64.deb -O /tmp/zoom.deb
sudo apt install -y /tmp/zoom.deb

echo "----------------"
echo "Installing Microsoft teams"
echo "----------------"
wget -c https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/teams_1.3.00.16851_amd64.deb -O /tmp/microsoft-teams.deb
sudo apt install -y /tmp/microsoft-teams.deb

echo "----------------"
echo "Installing Rambox"
echo "----------------"
wget https://github.com/ramboxapp/community-edition/releases/download/0.7.7/Rambox-0.7.7-linux-amd64.deb -O /tmp/rambox.deb
sudo apt install -y /tmp/rambox.deb
sudo chown root:root /opt/Rambox/chrome-sandbox
sudo chmod 4755 /opt/Rambox/chrome-sandbox 

echo "----------------"
echo "Installing Veracrypt"
echo "----------------"
wget https://launchpad.net/veracrypt/trunk/1.24-update7/+download/veracrypt-1.24-Update7-Debian-10-amd64.deb -O /tmp/veracrypt.deb
sudo apt install -y /tmp/veracrypt.deb

echo "----------------"
echo "Installing Authy"
echo "----------------"
sudo snap install authy --beta

echo "----------------"
echo "Installing Signal"
echo "----------------"
wget -O- https://updates.signal.org/desktop/apt/keys.asc | sudo apt-key add -
echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" | sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
sudo apt update && sudo apt install signal-desktop
sudo chown root:root /opt/Signal/chrome-sandbox
sudo chmod 4755 /opt/Signal/chrome-sandbox
