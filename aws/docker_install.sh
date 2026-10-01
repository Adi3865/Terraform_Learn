#!/bin/bash

sudo apt update
sudo apt install -y docker.io docker-compose

sudo systemctl enable docker
sudo systemctl start docker

sudo usermod -aG docker $USER

echo "Docker installed successfully"
docker --version
