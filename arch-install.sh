#!/bin/bash

# Blue Dragon Greet
greet() {
    clear;
    echo "
                                            ⠀⠀⠀⠀⠀⠀⣰⠂⠀⣼⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣀⠀⠀⠀⠀⠀⠀⠀
                                            ⠀⠀⠀⠀⠀⠀⡟⢆⢠⢣⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡘⡇⠹⢦⠀⠀⠀⠀⠀⠀
                                            ⠀⠀⠀⠀⠀⠀⠹⣦⣹⢸⡖⠤⢀⠀⠘⢿⠛⢔⠢⡀⠃⠣⠀⠇⢡⠀⠀⠀⠀⠀
                                            ⠀⠀⠀⠀⠀⠀⠀⠀⠹⠀⡷⣄⠠⡈⠑⠢⢧⠀⢢⠰⣼⢶⣷⣾⠀⠃⠀⠀⠀⠀
                                            ⠀⠀⠀⠀⠀⠀⠀⠤⢖⡆⠰⡙⢕⢬⡢⣄⠀⠑⢼⠀⠚⣿⢆⠀⠱⣸⠀⠀⠀⠀
                                            ⠀⠀⠀⠀⠀⢀⣤⡶⠮⢧⡀⠑⡈⢢⣕⡌⢶⠀⠀⣱⣠⠉⢺⡄⠀⢹⠀⠀⠀⠀
                                            ⠀⠀⠀⠀⠀⠀⢀⡸⠀⠈⡗⢄⡈⢆⠙⠿⣶⣿⠿⢿⣷⣴⠉⠹⢶⢾⡆⠀⠀⠀
                                            ⠀⠀⠀⢠⠶⠿⡉⠉⠉⠙⢻⣮⡙⢦⣱⡐⣌⠿⡄⢁⠄⠑⢤⣀⠐⢻⡇⠀⠀⠀
                                            ⠀⠀⠀⢀⣠⠾⠖⠛⢻⠟⠁⢘⣿⣆⠹⢷⡏⠀⠈⢻⣤⡆⠀⠑⢴⠉⢿⣄⠀⠀
                                            ⠀⠀⢠⠞⢃⢀⣠⡴⠋⠀⠈⠁⠉⢻⣷⣤⠧⡀⠀⠈⢻⠿⣿⡀⠀⢀⡀⣸⠀⠀
                                            ⠀⠀⢀⠔⠋⠁⡰⠁⠀⢀⠠⣤⣶⠞⢻⡙⠀⠙⢦⠀⠈⠓⢾⡟⡖⠊⡏⡟⠀⠀
                                            ⠀⢠⣋⢀⣠⡞⠁⠀⠔⣡⣾⠋⠉⢆⡀⢱⡀⠀⠀⠀⠀⠀⠀⢿⡄⠀⢇⠇⠀⠀
                                            ⠀⠎⣴⠛⢡⠃⠀⠀⣴⡏⠈⠢⣀⣸⣉⠦⣬⠦⣀⠀⣄⠀⠀⠈⠃⠀⠀⠙⡀⠀
                                            ⠀⡸⡁⣠⡆⠀⠀⣾⠋⠑⢄⣀⣠⡤⢕⡶⠁⠀⠀⠁⢪⠑⠤⡀⠀⢰⡐⠂⠑⢀
                                            ⠀⠏⡼⢋⠇⠀⣸⣟⣄⠀⠀⢠⡠⠓⣿⠇⠀⠀⠀⠀⠀⠑⢄⡌⠆⢰⣷⣀⡀⢸
                                            ⠀⣸⠁⢸⠀⢀⡿⡀⠀⠈⢇⡀⠗⢲⡟⠀⠀⠀⠀⠀⠀⠀⠀⠹⡜⠦⣈⠀⣸⡄
                                            ⠀⣧⠤⣼⠀⢸⠇⠉⠂⠔⠘⢄⣀⢼⠃⡇⠀⠀⠀⠀⠀⠀⠀⠀⠈⠑⠚⠳⠋⠀
                                            ⠐⠇⣰⢿⠀⣾⢂⣀⣀⡸⠆⠁⠀⣹⠀⢡⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                                            ⠀⢀⡏⣸⠀⣟⠁⠀⠙⢄⠼⠁⠈⢺⠀⠘⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                                            ⠀⠈⡏⣸⢰⡯⠆⢤⠔⠊⢢⣀⣀⡼⡇⠀⠹⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                                            ⠀⠀⢠⢻⢸⡇⠀⠀⠑⣤⠊⠀⠀⠈⣧⠀⠀⠙⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                                            ⠀⠀⠸⣼⢸⠟⠑⠺⡉⠈⢑⠆⠠⠐⢻⡄⠀⠀⠈⢆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                                            ⠀⠀⠀⡟⣸⡀⠀⠀⣈⣶⡁⠀⠀⠀⢠⢻⡄⠀⠀⠀⠑⠤⣄⡀⠀⠀⠀⠀⠀⠀
                                            ⠀⠀⢰⠁⣿⡿⠟⢏⠁⠀⢈⠖⠒⠊⠉⠉⠹⣄⠀⠀⠀⠀⠀⠈⠑⠢⡀⠀⠀⠀
                                            ⠀⣀⠟⢰⡇⠀⠀⠈⢢⡴⠊⠀⠀⠀⠀⠀⣸⢙⣷⠄⢀⠀⠠⠄⠐⠒⠚⠀⠀⠀
                                            ⠘⠹⠤⠛⠛⠲⢤⠐⠊⠈⠂⢤⢀⠠⠔⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                                            ⠀⠀⠀⠀⠀⠀⠀⠣⢀⡀⠔⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀

    ░▀▀█▀▀░█░░░░█▀▀░░░▒█▀▀▄░█░░█░▒█░█▀▀░░░▒█▀▀▄░█▀▀▄░█▀▀▄░█▀▀▀░▄▀▀▄░█▀▀▄░█░█▀▀░░░█▀▄░▄▀▀▄░▀█▀░█▀▀░░▀░░█░░█▀▀░█▀▀
    ░░▒█░░░█▀▀█░█▀▀░░░▒█▀▀▄░█░░█░▒█░█▀▀░░░▒█░▒█░█▄▄▀░█▄▄█░█░▀▄░█░░█░█░▒█░░░▀▀▄░░░█░█░█░░█░░█░░█▀░░░█▀░█░░█▀▀░▀▀▄
    ░░▒█░░░▀░░▀░▀▀▀░░░▒█▄▄█░▀▀░░▀▀▀░▀▀▀░░░▒█▄▄█░▀░▀▀░▀░░▀░▀▀▀▀░░▀▀░░▀░░▀░░░▀▀▀░░░▀▀░░░▀▀░░░▀░░▀░░░▀▀▀░▀▀░▀▀▀░▀▀▀

    " | lolcat -a -d 1;
}

# Stops script if a query returns non-zero status code
set -e

echo "[+] Performing pre-installation update\n"
sudo pacman --noconfirm -Syy
sudo pacman --noconfirm -Syu
sudo pacman -S --noconfirm base-devel lolcat dart rust pyenv zsh
curl https://bun.sh/install | bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash

greet


# Installing Fonts for user
[ ! -d ~/.config ] && mkdir ~/.local ~/.local/share ~/.local/share/fonts

cp -r ./fonts/* ~/.local/share/fonts/
fc-cache -f

# Make .src dir on home for storing build files which will be deleted at last
mkdir ~/.src

# Install Paru
if ! command -v paru &> /dev/null
then
    git clone https://aur.archlinux.org/paru.git ~/.src
    (cd ~/.srcs/paru/ && makepkg -si )
fi

# Terminal part
sudo pacman -S --noconfirm ttf-fira-code alacritty tmux starship

# others
sudo pacman -S --noconfirm flatpak neovim pipewire

paru -S amberol

[ ! -d ~/.config ] && mkdir ~/.config

echo "[+] Configuring NeoVim" | lolcat -a
if [ ! -d ~/.config/nvim ]; then
    mkdir ~/.config/nvim
    cp ./nvim/init.vim ~/.config/nvim/init.vim
else
    mv ~/.config/nvim/init.vim ~/.config/nvim/init.vim.old
    cp ./nvim/init.vim ~/.config/nvim/init.vim
fi

echo "[+] Configuring Alacritty" | lolcat -a
if [ ! -f ~/.config/alacritty.yml ]; then
    cp ./alacritty/alacritty.yml ~/.config/alacritty.yml
else
    mv ~/.config/alacritty.yml ~/.config/alacritty.yml.old
    cp ./alacritty/alacritty.yml ~/.config/alacritty.yml
fi

echo "[+] Configuring touchegg" | lolcat -a
if [ ! -d ~/.config/touchegg ]; then
    mkdir ~/.config/touchegg
    cp ./touchegg/touchegg.conf ~/.config/touchegg/touchegg.conf
else
    mv ~/.config/touchegg/touchegg.conf ~/.config/touchegg/touchegg.conf.old
    cp ./touchegg/touchegg.conf ~/.config/touchegg/touchegg.conf
fi

echo "[+] Configuring Starship" | lolcat -a
if [ ! -f ~/.config/starship.toml ]; then
    cp ./starship/starship.toml ~/.config/starship.toml
else
    mv ~/.config/starship.toml ~/.config/starship.toml.old
    cp ./starship/starship.toml ~/.config/starship.toml
fi

echo "[+] Configuring Tmux" | lolcat -a
if [ ! -d ~/.config/tmux ]; then
    mkdir ~/.config/tmux
    cp ./tmux/.tmux.conf ~/.config/tmux/.tmux.conf
else
    mv ~/.config/tmux/.tmux.conf ~/.config/tmux/.tmux.conf.old
    cp ./tmux/.tmux.conf ~/.config/tmux/.tmux.conf
fi

echo "[+] Loading tmux configuration" | lolcat -a
tmux source-file ~/.tmux.conf

echo "[+] Configuring git" | lolcat -a
git config --global user.name "thebluedragon7"
git config --global user.email "71325159+Thebluedragon7@users.noreply.github.com"
git config --global init.defaultBranch master


echo "[+] Configuring zsh paths" | lolcat -a
cp ./zsh/.zshenv ~/.zshenv
source ~/.zshenv

echo "[+] Setting up Starship" | lolcat -a
echo "eval \"$(starship init zsh)\"" >> ~/.zshrc

echo "
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⡀⠀⠀⠀⠀⢲⡀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣟⠀⠀⠀⠰⡿⣷⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⢻⡄⠀⢀⣶⠃⣼⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⠃⣾⡇⢀⣾⠇⢰⢸⠀⠀⠀⠀⠀⠀⢀⡀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣰⡿⠁⣸⣿⣀⣼⠃⢠⡏⡿⠀⠀⣠⣴⣿⣾⡿⠋
⠀⠀⠀⠀⠀⠀⠀⢀⣴⡿⣻⣳⣼⣿⢟⡡⠛⢿⣟⣼⡷⢞⡯⠟⠋⢠⡟⠀⠀
⠀⠀⠀⠀⠀⢀⣴⣟⠽⠞⠋⣡⣮⡔⠁⠠⣴⠟⢋⣥⠞⠋⠀⠀⠀⣾⠀⠀⠀
⠀⠀⠀⠀⣴⣷⣿⡵⢁⣤⣾⡡⣺⠃⠀⢨⠀⣴⡟⠁⠀⠀⠀⠀⠀⣧⠀⠀⠀
⠀⠀⠀⣾⢿⢳⡟⡠⡫⢚⣷⢶⣿⣠⠖⠂⠈⠈⢁⠤⠔⠒⠒⠒⢒⡿⠂⠀⠀
⠀⠀⠘⢿⣇⡜⢀⣷⣠⣟⣛⡼⠟⠁⢀⣀⣤⠔⠢⠤⣄⡀⠀⠀⡟⣧⠀⠀⠀
⠀⠀⣴⠶⣊⠞⠛⠁⠀⠀⠉⠀⣠⣾⣿⣿⢃⣖⠞⢿⣦⠉⠳⣤⡇⠸⡇⠀⠀
⢠⣶⡇⠸⢩⣍⢳⡆⠀⠀⣀⣾⣿⣿⣿⢇⣿⠀⣠⠾⠛⢷⡴⠾⢿⠀⣿⠀⠀
⠀⣾⠁⡇⢸⢡⠟⢀⡾⠛⣏⢿⣿⣿⣿⢸⣇⣾⡃⠀⠀⠈⡇⠀⣨⡇⢸⡆⠀
⠀⢛⣇⢇⢀⡤⠤⠟⠁⢠⣿⣼⣿⣿⣳⡿⣿⣿⡍⠓⠲⠦⠷⠚⠁⢱⢸⡇⠀
⠀⠀⠻⢿⣼⡇⠀⠀⠀⠘⣻⣜⣿⣧⢸⢸⣿⣿⠃⠀⠀⠈⢳⠀⠀⠸⡀⡇⠀
⠀⠀⠀⠀⠛⠹⠀⠀⠀⠀⠘⣿⣮⡿⢈⣼⣿⡟⠦⣤⣀⣀⢠⣀⡤⠞⡇⡇⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⢿⣿⣿⣿⣿⠃⠀⠀⠀⠈⢭⠁⠀⠀⣧⡇⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠛⣿⣿⡟⢦⣄⡀⠀⠀⢰⠀⣠⢴⣿⠁⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠺⢿⣦⡀⠈⠉⠓⠾⠋⢀⣼⠃⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⢟⣦⡀⠀⡇⢀⡾⠁⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⣿⣤⣷⠋⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⣟⠁⠀⠀⠀⠀⠀⠀
"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"