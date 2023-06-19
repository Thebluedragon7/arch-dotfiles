#!/bin/bash

# Stops script if a query returns non-zero status code
set -e

echo "[+] Performing pre-installation update\n"
sudo pacman --noconfirm -Syy
sudo pacman --noconfirm -Syu
sudo pacman -S --noconfirm base-devel lolcat unzip dart pyenv zsh
curl https://bun.sh/install | bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash


# Install and setup rust
sudo pacman -S --noconfirm rustup
rustup update stable
rustup self upgrade-data

# Make .src dir on home for storing build files which will be deleted at last
mkdir ~/.src


# Install Paru
if ! command -v paru &> /dev/null
then
    git clone https://aur.archlinux.org/paru.git ~/.src/paru
    (cd ~/.src/paru/ && makepkg -si )
fi

# Fonts
paru -S --noconfirm ttf-firacode-nerd ttf-ms-fonts noto-fonts-cjk

# Install TMUX
sudo pacman -S --noconfirm tmux

# Package managers and Text Editor
sudo pacman -S --noconfirm flatpak neovim


paru -S flatseal touchegg --noconfirm


[ ! -d ~/.config ] && mkdir ~/.config

echo "[+] Installing Nvim Packer (LUA)" | lolcat -a

echo "[+] Configuring NeoVim" | lolcat -a
if [ ! -d ~/.config/nvim ]; then
    mkdir ~/.config/nvim
    ln -s ~/arch-dotfiles/nvim/init.lua ~/.config/nvim/init.lua
else
    mv ~/.config/nvim/init.lua ~/.config/nvim/init.lua.old
    ln -s ~/arch-dotfiles/nvim/init.lua ~/.config/nvim/init.lua
fi

echo "[+] Configuring kitty" | lolcat -a
if [ ! -f ~/.config/kitty.conf ]; then
    ln -s ~/arch-dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf
else
    mv ~/.config/kitty.conf ~/.config/kitty.conf.old
    ln -s ~/arch-dotfiles/kitty/kitty.conf ~/.config/kitty.conf
fi

echo "[+] Configuring Alacritty" | lolcat -a
if [ ! -f ~/.config/alacritty.yml]; then
    ln -s ~/arch-dotfiles/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml
else
    mv ~/.config/alacritty.yml ~/.config/alacritty.yml.old
    ln -s ~/arch-dotfiles/alacritty/alacritty.yml ~/.config/alacritty.yml
fi

echo "[+] Configuring touchegg" | lolcat -a
if [ ! -d ~/.config/touchegg ]; then
    mkdir ~/.config/touchegg
    ln -s ~/arch-dotfiles/touchegg/touchegg.conf ~/.config/touchegg/touchegg.conf
else
    mv ~/.config/touchegg/touchegg.conf ~/.config/touchegg/touchegg.conf.old
    ln -s ~/arch-dotfiles/touchegg/touchegg.conf ~/.config/touchegg/touchegg.conf
fi

echo "[+] Enabling touchegg" | lolcat -a
systemctl enable touchegg
systemctl start touchegg

echo "[+] Configuring Starship" | lolcat -a
if [ ! -f ~/.config/starship.toml ]; then
    ln -s ~/arch-dotfiles/starship/starship.toml ~/.config/starship.toml
else
    mv ~/.config/starship.toml ~/.config/starship.toml.old
    ln -s  ~/arch-dotfiles/starship/starship.toml ~/.config/starship.toml
fi

echo "[+] Configuring Tmux" | lolcat -a
if [ ! -f ~/.tmux.conf ]; then
    ln -s  ~/arch-dotfiles/tmux/.tmux.conf ~/.tmux.conf
else
    mv ~/.tmux.conf ~/.tmux.conf.old
    ln -s  ~/arch-dotfiles/tmux/.tmux.conf ~/.tmux.conf
fi

# echo "[+] Loading tmux configuration" | lolcat -a
# tmux source-file ~/.tmux.conf

echo "[+] Configuring git" | lolcat -a
git config --global user.name "thebluedragon7"
git config --global user.email "71325159+Thebluedragon7@users.noreply.github.com"
git config --global init.defaultBranch master


echo "[+] Configuring zsh paths" | lolcat -a
ln -s ~/arch-dotfiles/zsh/.zshenv ~/.zshenv
source ~/.zshenv

echo "[+] Setting ZSH as default shell"
chsh -s $(which zsh)
