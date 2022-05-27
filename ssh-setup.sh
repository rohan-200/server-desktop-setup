sudo apt install openssh-server -y
sudo ufw enable
sudo ufw allow 22/tcp

echo "done setting ssh server can be used headless "