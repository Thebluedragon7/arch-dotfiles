#!/bin/bash

sudo pacman -S --noconfirm audacity virtualbox thefuck bat lsd neofetch bpytop vlc

flatpak install org.pipewire.Helvum com.github.wwmm.easyeffects cc.arduino.IDE2 com.github.joseexposito.touche org.fritzing.Fritzing org.librepcb.LibrePCB com.getpostman.Postman io.bassi.Amberol -y

paru -S --noconfirm rpi-imager-bin etcher-bin visual-studio-code-bin stacer-bin whatsdesk-bin net-tools drawio-desktop-bin trello-bin gnome-browser-connector

gsettings set org.gnome.desktop.default-applications.terminal exec kitty
