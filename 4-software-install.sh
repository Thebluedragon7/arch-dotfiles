#!/bin/bash

sudo pacman -S --noconfirm audacity thefuck bat lsd neofetch bpytop vlc

flatpak install cc.arduino.IDE2 com.github.joseexposito.touche com.getpostman.Postman io.bassi.Amberol -y

paru -S --noconfirm rpi-imager-bin etcher-bin code stacer-bin net-tools drawio-desktop-bin trello-bin gnome-browser-connector

gsettings set org.gnome.desktop.default-applications.terminal exec kitty
