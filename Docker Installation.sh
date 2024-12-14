# This Script is just for Docker Engine Installation on Ubuntu Server. Based on the OS you can change it from the Docker Installtion Community Page


for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo systemctl start docker
systemctl enable docker 
