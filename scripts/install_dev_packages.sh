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
echo "Add Docker repository"
echo "----------------"
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"

echo "----------------"
echo "Installing Docker"
echo "----------------"
sudo apt-get update
sudo apt-get -y install docker-ce

echo "----------------"
echo "Installing Virtualbox"
echo "----------------"

sudo sh -c 'echo "deb http://download.virtualbox.org/virtualbox/debian stretch contrib" >> /etc/apt/sources.list.d/virtualbox.list'
sudo wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | apt-key add -
sudo apt-get update
sudo apt install -y virtualbox-5.1
sudo gpasswd -a $USER vboxusers
