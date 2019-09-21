#!/usr/bin/env bash
# -*- Mode: sh; coding: utf-8; indent-tabs-mode: nil; tab-width: 4 -*-
#
# Author:
#   bi1a1y, ubidragon
#
# Description:
#   Install the easy packages

cd ~
sudo pkcon install -y hunspell-en-gb hunspell-es fonts-inconsolata libreoffice \ 
exfat-fuse gparted furiusisomount nfs-common filelight htop balena-etcher-electron \ 
chromium-browser vivaldi-snapshot \ 
vlc ffmpeg \ 
brackets sublime-text-installer typora \ 
pgadmin3 sqldeveloper \ 
virtualbox-5.2 docker-ce docker-ce-cli containerd.io kubectl \ 
zip unzip unrar neofetch filezilla \ 
curl zenmap wireshark \ 
gcc libx11 libxext qt5-base qt5-svg qt5-x11extras kwindowsystem qt5-tools make qmake \
python-pip kio-gdrive apt-transport-https libnss3-tools\ 
yakuake byobu tmux tilix openssh-server x2goclient zsh \ 
ca-certificates gnupg-agent software-properties-common \ 
openvpn softether-client softether-server \ 
insync rememberthemilk thunderbird qbittorrent flux \ 
kdesudo kate kdiff3 konsole remmina meld kdesvn

#sudo snap install writefull

#check pip is up to date
pip install --upgrade pip

# Classifier https://github.com/bhrigu123/classifier
pip install classifier
cd ~/Scripts/KDE_Neon_PostInstallScript/
