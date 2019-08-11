#!/usr/bin/env bash
# -*- Mode: sh; coding: utf-8; indent-tabs-mode: nil; tab-width: 4 -*-
#
# Author:
#   bi1a1y
#
# Description:
#   Install the easy packages

cd ~
sudo pkcon install -y hunspell-en-gb hunspell-es exfat-fuse chromium-browser openssh-server gimp gparted curl zip vlc unzip unrar neofetch filezilla ffmpeg qbittorrent python-pip openvpn kio-gdrive kdesudo fonts-inconsolata yakuake furiusisomount sublime-text-installer nfs-common brackets docker libreoffice eclipse byobu tmux tilix virtualbox-5.2 softether-client softether-server flux insync rememberthemilk thunderbird zenmap

#sudo snap install writefull

#check pip is up to date
pip install --upgrade pip

# Classifier https://github.com/bhrigu123/classifier
pip install classifier
cd ~/Scripts/KDE_Neon_PostInstallScript/
