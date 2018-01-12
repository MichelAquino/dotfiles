#!/bin/sh

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
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt-get update
sudo apt-get -y install code

echo "----------------"
echo "Installing Sublime"
echo "----------------"
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo apt-get update
sudo apt-get -y install sublime-text

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
echo "jq"
echo "----------------"
sudo apt-get -y install jq

echo "----------------"
echo "Installing Docker"
echo "----------------"
sudo apt-get update
sudo apt-get -y install docker-ce

echo "----------------"
echo "Installing Virtualbox"
echo "----------------"
sudo apt install -y virtualbox
sudo gpasswd -a $USER vboxusers


echo "----------------"
echo "Installing Mitmproxy - Man in the middle proxy"
echo "----------------"
wget https://github.com/mitmproxy/mitmproxy/releases/download/v2.0.2/mitmproxy-2.0.2-linux.tar.gz -O /tmp/mitmproxy-2.0.2-linux.tar.gz
sudo tar -xzf /tmp/mitmproxy-2.0.2-linux.tar.gz -C /usr/local/bin

echo "----------------"
echo "Installing Docker compose"
echo "----------------"
sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
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
