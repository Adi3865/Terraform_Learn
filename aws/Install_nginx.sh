#!/bin/bash
sudo apt-get update -y
sudo apt-get install -y nginx
sudo systemctl start nginx
sudo systemctl enable nginx
sudo ufw allow 'Nginx HTTP'


echo "<h1>Welcome to my EC2 instance!</h1>" | sudo tee /var/www/html/index.html