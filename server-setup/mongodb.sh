wget -qO- https://www.mongodb.org/static/pgp/server-5.0.asc | gpg --dearmor > /etc/apt/trusted.gpg.d/mongo.gpg
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
sudo apt update
sudo apt-get install mongodb-org -y
sudo systemctl enable mongod 
sudo systemctl start mongod 
sudo systemctl daemon-reload
sudo systemctl status mongod
