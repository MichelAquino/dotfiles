#!/bin/sh

echo "-------------------------------------"
echo "Installing CTop"
echo "-------------------------------------"
sudo wget https://github.com/bcicen/ctop/releases/download/v0.7.1/ctop-0.7.1-linux-amd64 -O /usr/local/bin/ctop
sudo chmod +x /usr/local/bin/ctop

echo "-------------------------------------"
echo "Installing WRK - Load Test Tool"
echo "-------------------------------------"
git clone https://github.com/wg/wrk.git /tmp/wrk
cd /tmp/wrk
make
sudo cp wrk /usr/local/bin

echo "-------------------------------------"
echo "Installing HEY - Load Test Tool"
echo "-------------------------------------"
go get -u github.com/rakyll/hey

#erro
echo "----------------"
echo "Installing VS Code"
echo "----------------"
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'

sudo dnf check-update
sudo dnf -y install code

echo "----------------"
echo "Installing Sublime"
echo "----------------"
sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
sudo dnf config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
sudo dnf install -y sublime-text

echo "-------------------------------------"
echo "Installing oh-my-zsh"
echo "-------------------------------------"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo "----------------"
echo "Installing Postman"
echo "----------------"
wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz
sudo tar -xzf postman.tar.gz -C /opt
rm postman.tar.gz
sudo ln -s /opt/Postman/Postman /usr/bin/postman

echo "----------------"
echo "Installing Robo3t"
echo "----------------"
wget https://download.robomongo.org/1.2.1/linux/robo3t-1.2.1-linux-x86_64-3e50a65.tar.gz -O /tmp/robo3t-1.2.1-linux-x86_64-3e50a65.tar.gz
sudo tar -xzf /tmp/robo3t-1.2.1-linux-x86_64-3e50a65.tar.gz -C /opt
rm /tmp/robo3t-1.2.1-linux-x86_64-3e50a65.tar.gz
sudo ln -s /opt/robo3t-1.2.1-linux-x86_64-3e50a65/bin/robo3t /usr/bin/robo3t

sudo wget https://robomongo.org/static/robomongo-128x128-129df2f1.png -O /opt/robo3t-1.2.1-linux-x86_64-3e50a65/icon.png
echo -e '[Desktop Entry]\n Version=1.0\n Name=Robo3T\n Exec=/opt/robo3t-1.2.1-linux-x86_64-3e50a65/bin/robo3t\n Icon=/opt/robo3t-1.2.1-linux-x86_64-3e50a65/icon.png\n Type=Application\n Categories=Development' | sudo tee /usr/share/applications/robo3t.desktop
sudo chmod +x /usr/share/applications/robo3t.desktop

echo "----------------"
echo "jq"
echo "----------------"
sudo dnf -y install jq

echo "----------------"
echo "Installing Docker"
echo "----------------"
sudo dnf -y install dnf-plugins-core
sudo dnf config-manager --add-repo https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install -y docker-ce

sudo systemctl start docker
sudo systemctl enable docker

sudo groupadd docker
sudo usermod -aG docker ${USER}

#sudo systemctl disable docker

#echo "----------------"
#echo "Installing Virtualbox"
#echo "----------------"
#sudo dnf install -y virtualbox
#sudo gpasswd -a $USER vboxusers

echo "----------------"
echo "Installing NPM"
echo "----------------"
sudo dnf install -y npm

echo "----------------"
echo "Installing Mitmproxy - Man in the middle proxy"
echo "----------------"
wget https://github.com/mitmproxy/mitmproxy/releases/download/v2.0.2/mitmproxy-2.0.2-linux.tar.gz -O /tmp/mitmproxy-2.0.2-linux.tar.gz
sudo tar -xzf /tmp/mitmproxy-2.0.2-linux.tar.gz -C /usr/local/bin

echo "----------------"
echo "Installing Docker compose"
echo "----------------"
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

mkdir -p ~/.zsh/completion
curl -L https://raw.githubusercontent.com/docker/compose/1.18.0/contrib/completion/zsh/_docker-compose > ~/.zsh/completion/_docker-compose

# Export env vars
touch "$HOME/.zshrc"
{
    echo ''
    echo '################ Docker Compose ################'
    echo 'fpath=(~/.zsh/completion $fpath)'
    echo 'autoload -Uz compinit && compinit -i'
} >> "$HOME/.zshrc"

echo "----------------"
echo "Installing Elixir"
echo "----------------"
sudo dnf install elixir

# https://github.com/zricethezav/gitleaks