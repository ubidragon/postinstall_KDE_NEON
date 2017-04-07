#!/usr/bin/env bash
# -*- Mode: sh; coding: utf-8; indent-tabs-mode: nil; tab-width: 4 -*-
#
# Author:
#   bi1a1y
#
# Description:
#   Further Setup
cd ~/Scripts/KDE_Neon_PostInstallScript/

#download some extra fonts
#cd ~/KDE_Neon_PostInstallScript/other/
#./download_consolas.sh

#setup neofetch
mkdir -p -v ~/.config/neofetch/
ln -s ~/Scripts/KDE_Neon_PostInstallScript/scripts/config ~/.config/neofetch/

#make download origanisation folders
ln -s ~/Scripts/KDE_Neon_PostInstallScript/scripts/classifier_script.sh ~/Downloads/
mkdir -p -v ~/Downloads/Torrents/_complete
mkdir -p -v ~/Downloads/Torrents/_incomplete
mkdir -p -v ~/Downloads/Torrents/_torrents
mkdir -p -v ~/Downloads/Video
mkdir -p -v ~/Downloads/Documents
mkdir -p -v ~/Downloads/Software
mkdir -p -v ~/Downloads/Images
mkdir -p -v ~/Downloads/Compressed
mkdir -p -v ~/Downloads/_bckps
mkdir -p -v ~/Downloads/Themes

#other folders
#mkdir -p -v ~/Programs
#mkdir -p -v ~/Downloads/Scripts


#open as root dolphin
mkdir -p -v ~/.local/share/kservices5/ServiceMenus
ln -s  ~/Scripts/KDE_Neon_PostInstallScript/scripts/root_dolphin.desktop ~/.local/share/kservices5/ServiceMenus/

#enable numlock before login
#sudo cp ~/KDE_Neon_PostInstallScript/scripts/sddm.conf /etc/




cd ~/Scripts/KDE_Neon_PostInstallScript/
