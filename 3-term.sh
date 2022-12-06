#!/bin/bash

echo "[+] Downloading ZSH autosuggestions" | lolcat -a
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
echo "[+] Downloading ZSH Syntax Highlighting" | lolcat -a
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting



sudo pacman -S docker docker-compose kitty starship  --noconfirm
systemctl enable docker
systemctl start docker

echo "[+] Allowing access to Docker for $USER" | lolcat -a
sudo usermod -aG docker $USER

echo "[+] Allowing to Serial Ports for $USER" | lolcat -a
sudo usermod -aG uucp $USER

echo "[+] Setting up Portainer" | lolcat -a
docker volume create portainer_data
docker run -d -p 8000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
