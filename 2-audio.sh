#!/bin/bash

sudo pacman -S --noconfirm pipewire pipewire-pulse

systemctl enable --user pipewire.service
systemctl enable --user pipewire-pulse.service

