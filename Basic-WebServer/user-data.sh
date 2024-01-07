#!/bin/bash

echo "Hello World" > hi.txt
sudo yum update -y
sudo yum install docker -y
  
sudo usermod -a -G docker ec2-user
sudo systemctl enable docker 
sudo systemctl start docker 
sudo docker pull nginx
sudo docker run -d -p "80:80" nginx