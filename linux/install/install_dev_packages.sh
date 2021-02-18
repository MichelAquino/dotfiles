#!/bin/sh

echo "-------------------------------------"
echo "Installing CTop"
echo "-------------------------------------"
sudo wget https://github.com/bcicen/ctop/releases/download/v0.7.1/ctop-0.7.1-linux-amd64 -O /usr/local/bin/ctop
sudo chmod +x /usr/local/bin/ctop

echo "-------------------------------------"
echo "Installing WRK - Load Test Tool"
echo "-------------------------------------"
git clone https://github.com/wg/wrk.git ./wrk
cd ./wrk
make
sudo cp wrk /usr/local/bin
cd ../
rm -rf ./wrk

echo "----------------"
echo "Installing VS Code"
echo "----------------"
sudo apt update
sudo apt -y install code codium

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
sudo apt -y install jq

echo "----------------"
echo "Installing Docker"
echo "----------------"
sudo apt -y install docker-ce docker-ce-cli containerd.io

sudo systemctl start docker
sudo systemctl enable docker

sudo groupadd docker
sudo usermod -aG docker ${USER}

echo "----------------"
echo "Installing Docker compose"
echo "----------------"
sudo curl -L https://github.com/docker/compose/releases/download/1.25.3/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

mkdir -p ~/.zsh/completion
curl -L https://raw.githubusercontent.com/docker/compose/1.18.0/contrib/completion/zsh/_docker-compose > ~/.zsh/completion/_docker-compose

# Export env vars
touch "$HOME/.zshrc"
{
    echo ''
    echo '################ Docker Compose ##############˜##'
    echo 'fpath=(~/.zsh/completion $fpath)'
    echo 'autoload -Uz compinit && compinit -i'
} >> "$HOME/.zshrc"

echo "----------------"
echo "Installing Elixir"
echo "----------------"
sudo apt -y install elixir
