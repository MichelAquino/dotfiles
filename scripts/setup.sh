echo "----------------"
echo "Updating system!"
echo "----------------"
sudo apt update && apt -y upgrade

echo "-------------------------------------"
echo "Installing applications"
echo "-------------------------------------"
sudo apt-get -y install tmux

# Dependencias golang:
# go get github.com/kardianos/govendor
