#!/usr/bin/env bash
# -*- Mode: sh; coding: utf-8; indent-tabs-mode: nil; tab-width: 4 -*-
#
# Author:
#   bi1a1y
#
# Description:
#   Further Setup
cd ~/Scripts/KDE_Neon_PostInstallScript/

#setup neofetch
mkdir -p -v ~/.config/neofetch/
ln -s ~/Scripts/KDE_Neon_PostInstallScript/scripts/config ~/.config/neofetch/

#make download origanisation folders
ln -s ~/Scripts/KDE_Neon_PostInstallScript/scripts/classifier_script.sh ~/Descargas/
mkdir -p -v ~/Descargas/Torrents/_complete
mkdir -p -v ~/Descargas/Torrents/_incomplete
mkdir -p -v ~/Descargas/Torrents/_torrents
mkdir -p -v ~/Descargas/Video
mkdir -p -v ~/Descargas/Documents
mkdir -p -v ~/Descargas/Software
mkdir -p -v ~/Descargas/Images
mkdir -p -v ~/Descargas/Compressed
mkdir -p -v ~/Descargas/_bckps
mkdir -p -v ~/Descargas/Themes

#other folders
#mkdir -p -v ~/Programs
#mkdir -p -v ~/Descargas/Scripts

#open as root dolphin
mkdir -p -v ~/.local/share/kservices5/ServiceMenus
ln -s  ~/Scripts/KDE_Neon_PostInstallScript/scripts/root_dolphin.desktop ~/.local/share/kservices5/ServiceMenus/

#enable numlock before login
sudo cp ~/KDE_Neon_PostInstallScript/scripts/sddm.conf /etc/

cd ~/Scripts/KDE_Neon_PostInstallScript/
