#!/bin/bash

# Stops script if a query returns non-zero status code
set -e

echo "[+] Performing pre-installation update\n"
sudo pacman --noconfirm -Syy
sudo pacman --noconfirm -Syu
sudo pacman -S --noconfirm base-devel lolcat dart pyenv zsh
curl https://bun.sh/install | bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash


# Make .src dir on home for storing build files which will be deleted at last
mkdir ~/.src


# Install Paru
if ! command -v paru &> /dev/null
then
    git clone https://aur.archlinux.org/paru.git ~/.src/paru
    (cd ~/.src/paru/ && makepkg -si )
fi

# Fonts
paru -S --noconfirm ttf-fira-code ttf-ms-fonts

# Install TMUX
sudo pacman -S --noconfirm tmux | lolcat

# Package managers and Text Editor
sudo pacman -S --noconfirm flatpak neovim | lolcat


paru -S flatseal touchegg --noconfirm


[ ! -d ~/.config ] && mkdir ~/.config

echo "[+] Installing VimPlug" | lolcat -a
paru -S --noconfirm vim-plug

# TODO: init.vim
echo "[+] Configuring NeoVim" | lolcat -a
if [ ! -d ~/.config/nvim ]; then
    mkdir ~/.config/nvim
    ln -s ./nvim/init.vim ~/.config/nvim/init.vim
else
    mv ~/.config/nvim/init.vim ~/.config/nvim/init.vim.old
    ln -s ./nvim/init.vim ~/.config/nvim/init.vim
fi

# TODO: kitty.conf
echo "[+] Configuring kitty" | lolcat -a
if [ ! -f ~/.config/kitty.conf ]; then
    ln -s ./kitty/kitty.conf ~/.config/kitty.conf
else
    mv ~/.config/kitty.conf ~/.config/kitty.conf.old
    ln -s ./kitty/kitty.conf ~/.config/kitty.conf
fi

# TODO: touchegg.conf
echo "[+] Configuring touchegg" | lolcat -a
if [ ! -d ~/.config/touchegg ]; then
    mkdir ~/.config/touchegg
    ln -s ./touchegg/touchegg.conf ~/.config/touchegg/touchegg.conf
else
    mv ~/.config/touchegg/touchegg.conf ~/.config/touchegg/touchegg.conf.old
    ln -s ./touchegg/touchegg.conf ~/.config/touchegg/touchegg.conf
fi

echo "[+] Enabling touchegg" | lolcat -a
systemctl enable touchegg
systemctl start touchegg

echo "[+] Configuring Starship" | lolcat -a
if [ ! -f ~/.config/starship.toml ]; then
    ln -s ./starship/starship.toml ~/.config/starship.toml
else
    mv ~/.config/starship.toml ~/.config/starship.toml.old
    ln -s  ./starship/starship.toml ~/.config/starship.toml
fi

echo "[+] Configuring Tmux" | lolcat -a
if [ ! -f ~/.tmux.conf ]; then
    ln -s  ./tmux/.tmux.conf ~/.tmux.conf
else
    mv ~/.tmux.conf ~/.tmux.conf.old
    ln -s  ./tmux/.tmux.conf ~/.tmux.conf
fi

# echo "[+] Loading tmux configuration" | lolcat -a
# tmux source-file ~/.tmux.conf

echo "[+] Configuring git" | lolcat -a
git config --global user.name "thebluedragon7"
git config --global user.email "71325159+Thebluedragon7@users.noreply.github.com"
git config --global init.defaultBranch master


echo "[+] Configuring zsh paths" | lolcat -a
cp ./zsh/.zshenv ~/.zshenv
source ~/.zshenv

echo "[+] Setting ZSH as default shell"
chsh -s $(which zsh)
