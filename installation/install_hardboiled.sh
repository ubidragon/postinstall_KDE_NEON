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


#download nordvpn certificates
#mkdir -p -v ~/NordVPN_certificates
#cd ~/NordVPN_certificates
#wget https://nordvpn.com/api/files/zip
#unzip zip
#rm zip
#cd ~/KDE_Neon_PostInstallScript/


#-----download and install deb packages-----------------------------------------------------------------
#mkdir -p -v ~/KDE_Neon_PostInstallScript/dls
cd ~/Downloads/

#install chrome
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#sudo gdebi -n google-chrome-stable_current_amd64.deb

#install veracrypt
#mkdir -p -v ~/Downloads/Veracypt
#cd ~/Downloads/Veracypt
#wget https://launchpad.net/veracrypt/trunk/1.19/+download/veracrypt-1.19-setup.tar.bz2
#tar jxf v*.tar.bz2

#install teamviewer
wget https://download.teamviewer.com/download/teamviewer_i386.deb
sudo gdebi -n teamviewer_i386.deb
cd ~/Downloads/

#install stacer
wget https://github.com/oguzhaninan/Stacer/releases/download/v1.0.6/Stacer_1.0.6_amd64.deb
sudo gdebi -n Stacer_1.0.6_amd64.deb
cd ~/Downloads/

#install beyond compare
wget http://www.scootersoftware.com/bcompare-4.1.9.21719_amd64.deb
sudo gdebi -n bcompare-4.1.9.21719_amd64.deb
cd ~/Downloads/

#install keybase
#curl -O https://prerelease.keybase.io/keybase_amd64.deb
# if you see an error about missing `libappindicator1`
# from the next command, you can ignore it, as the
# subsequent command corrects it
#sudo gdebi -n keybase_amd64.deb
#run_keybase
#cd ~/Downloads/

#install gitkraken
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo gdebi -n gitkraken-amd64.deb
cd ~/Downloads/

#install calibre ebook manager
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.py | sudo python -c "import sys; main=lambda:sys.stderr.write('Download failed\n'); exec(sys.stdin.read()); main()"
cd ~/Downloads/

#install anaconda
wget https://repo.continuum.io/archive/Anaconda3-4.3.1-Linux-x86_64.sh
bash Anaconda3-4.3.1-Linux-x86_64.sh
cd ~/Downloads/

#install steam
wget https://steamcdn-a.akamaihd.net/client/installer/steam.deb
sudo gdebi -n steam.deb
cd ~/Downloads/

#install etcher
wget https://resin-production-downloads.s3.amazonaws.com/etcher/1.0.0-beta.19/Etcher-1.0.0-beta.19-linux-x64.zip
unzip Etcher-1.0.0-beta.19-linux-x64.zip -d ~/Programs/Etcher/
cd ~/Downloads/

#install libreoffice
wget http://download.documentfoundation.org/libreoffice/stable/5.3.1/deb/x86_64/LibreOffice_5.3.1_Linux_x86-64_deb.tar.gz
tar xvzf LibreOffice*.tar.gz
cd LibreOffice*/DEBS
sudo dpkg -i *.deb
cd ~/Downloads/

#install latte dock
#git clone https://github.com/psifidotos/Latte-Dock.git
#sudo apt install g++ cmake extra-cmake-modules qtdeclarative5-dev libqt5x11extras5-dev libkf5iconthemes-dev libkf5plasma-dev libkf5windowsystem-dev libkf5declarative-dev libkf5xmlgui-dev libkf5activities-dev build-essential libxcb-util-dev libkf5wayland-dev git gettext libkf5archive-dev libkf5notifications-dev libxcb-util0-dev
#cd Latte-Dock/
#./install.sh

#install berry image viewer
wget http://aseman.co/downloads/berry/1/berry_1.0.0-1-amd64
sudo gdebi -n berry_1.0.0-1-amd64
cd ~/Downloads/

cd ~/Scripts/KDE_Neon_PostInstallScript/



#cd ~/KDE_Neon_PostInstallScript/

#rm ~/KDE_Neon_PostInstallScript/Downloads/

#install mendeley
#xdg-open https://www.mendeley.com/download-mendeley-desktop/ubuntu/instructions/
#install slack
#xdg-open https://slack.com/downloads/linux
