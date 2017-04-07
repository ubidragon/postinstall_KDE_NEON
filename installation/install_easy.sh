#!/usr/bin/env bash
# -*- Mode: sh; coding: utf-8; indent-tabs-mode: nil; tab-width: 4 -*-
#
# Author:
#   bi1a1y
#
# Description:
#   Install the easy packages

cd ~
sudo apt-get install -yy htop gdebi synaptic hunspell-en-gb exfat-fuse grsync bleachbit gufw chromium-browser openssh-server pyrenamer metamorphose2 rclone-browser atom stream2chromecast gimp gimp-plugin-registry gimp-gmic gparted texmaker lightzone stellarium simplescreenrecorder playonlinux curl zip y-ppa-manager vlc unzip unrar veracrypt texmaker peek neofetch filezilla ffmpeg handbrake grub-customizer qbittorrent python-pip openvpn kio-gdrive kdesudo fonts-inconsolata yakuake autokey-qt furiusisomount sublime-text-installer nfs-common


#sudo snap install writefull

#check pip is up to date
pip install --upgrade pip

pip install classifier
cd ~/Scripts/KDE_Neon_PostInstallScript/
