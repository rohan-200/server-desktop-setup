sudo apt-get install openssh-server -y
sudo systemctl enable ssh

sudo ufw enable
sudo ufw allow ssh
sudo ufw allow 22/tcp

echo "done setting ssh server can be used headless "