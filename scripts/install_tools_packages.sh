#!/bin/sh

echo "-------------------------------------"
echo "Installing Google Chrome"
echo "-------------------------------------"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb -P /tmp
sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb

echo "-------------------------------------"
echo "Installing Brave"
echo "-------------------------------------"
sudo dnf config-manager --add-repo https://s3-us-west-2.amazonaws.com/brave-rpm-release/x86_64/
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install -y brave-browser

echo "----------------"
echo "Installing Spotify"
echo "----------------"
sudo dnf config-manager --add-repo=http://negativo17.org/repos/fedora-spotify.repo
sudo dnf install -y spotify

echo "----------------"
echo "Installing Slack"
echo "----------------"
wget https://downloads.slack-edge.com/linux_releases/slack-3.2.0.beta25a7a50e-0.1.fc21.x86_64.rpm -O /tmp/slack-desktop-3.2.0.rpm
sudo dnf install -y /tmp/slack-desktop-3.2.0.rpm

echo "----------------"
echo "Installing Popcorn Time"
echo "----------------"
sudo rm -Rf /opt/popcorntime
sudo rm -Rf /usr/bin/Popcorn-Time
sudo rm -Rf /usr/share/applications/popcorntime.desktop

wget https://get.popcorntime.sh/build/Popcorn-Time-0.3.10-Linux-64.tar.xz -O /tmp/popcorntime.tar.xz
sudo mkdir /opt/popcorntime
sudo tar Jxf /tmp/popcorntime.tar.xz -C /opt/popcorntime/

sudo ln -sf /opt/popcorntime/Popcorn-Time /usr/bin/Popcorn-Time

echo -e '[Desktop Entry]\n Version=1.0\n Name=popcorntime\n Exec=/opt/popcorntime/Popcorn-Time\n Icon=/opt/popcorntime/src/app/images/icon.png\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/popcorntime.desktop
sudo chmod +x /usr/share/applications/popcorntime.desktop

echo "----------------"
echo "Installing Deluge"
echo "----------------"
sudo dnf install -y deluge

echo "----------------"
echo "Installing Skype"
echo "----------------"
wget https://go.skype.com/skypeforlinux-64.rpm -P /tmp
sudo dnf install -y /tmp/skypeforlinux-64.rpm

echo "----------------"
echo "Installing Rambox"
echo "----------------"
wget https://github.com/ramboxapp/community-edition/releases/download/0.6.1/Rambox-0.6.1-linux-x86_64.rpm -O /tmp/Rambox-0.6.1-x64.rpm
sudo rpm -i /tmp/Rambox-0.6.1-x64.rpm 




