#!/bin/bash

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" | lolcat -a -d 1

echo "[+] Setting up Starship" | lolcat -a
echo "eval \"$(starship init zsh)\"" >> ~/.zshrc