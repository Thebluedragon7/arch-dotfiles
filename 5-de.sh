# Install LY
git clone --recurse-submodules https://github.com/fairyglade/ly ~/.src/ly
(cd ~/.src/ly/ && make && sudo make install installsystemd )

sudo pacman -S --noconfirm gnome
sudo pacman -Rns gdm --noconfirm

systemctl enable ly.service

cp -r ./gnome-extensions ~/.local/share/gnome-shell/extensions