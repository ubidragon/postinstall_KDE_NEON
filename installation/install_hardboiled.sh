#!/usr/bin/env bash
# -*- Mode: sh; coding: utf-8; indent-tabs-mode: nil; tab-width: 4 -*-
#
# Author:
#   bi1a1y
#
# Description:
#   A post-installation bash script KDE Neon

#-----install virtualbox--------------------------------------------------------------------------------
sudo apt-get install -yy virtualbox
sudo adduser vm vboxusers
cd ~/Scripts/KDE_Neon_PostInstallScript/

#-----download and install deb packages-----------------------------------------------------------------
#mkdir -p -v ~/KDE_Neon_PostInstallScript/dls
cd ~/Downloads/

#install gitkraken
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i gitkraken-amd64.deb
cd ~/Downloads/

#install etcher
wget https://github.com/balena-io/etcher/releases/download/v1.5.53/balena-etcher-electron-1.5.53-linux-ia32.zip
unzip balena-etcher-electron-1.5.53-linux-ia32.zip -d ~/Programs/Etcher/
cd ~/Downloads/

#install flameshot
wget https://github.com/lupoDharkael/flameshot/releases/download/v0.6.0/flameshot_0.6.0_bionic_x86_64.deb
sudo dpkg -i flameshot_0.6.0_bionic_x86_64.deb