#!/usr/bin/env bash
# -*- Mode: sh; coding: utf-8; indent-tabs-mode: nil; tab-width: 4 -*-
#
# Author:
#   bi1a1y, ubidragon
#
# Description:
#   Add PPA's


#------------------------------------------------------------------------------#
#                            OFFICIAL UBUNTU REPOS                             #
#------------------------------------------------------------------------------#
sudo add-apt-repository -y "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"
sudo add-apt-repository -y "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc)-security main universe restricted multiverse"
sudo add-apt-repository -y "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc)-updates main universe restricted multiverse"

# Adding keys
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C6DAEA80
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 614C4B38
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 1378B444
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 886DDD89
#Typora
curl -fsSL https://typora.io/linux/public-key.asc | sudo apt-key add -
#Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
curl -fsSL https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
#Vivaldi
curl -fsSL http://repo.vivaldi.com/archive/linux_signing_key.pub | sudo apt-key add -
#Balena Etcher
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 379CE192D401AB61
#Insync
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ACCAF35C
#sudo apt-key add oracle_vbox_2016.asc
#sudo apt-key add oracle_vbox.asc

# Adding ppa software
#Slimbook
sudo add-apt-repository -y ppa:slimbook/slimbook
#Neofetch
sudo add-apt-repository -y ppa:dawidd0811/neofetch
#Gimp
#sudo add-apt-repository -y ppa:otto-kesselgulasch/gimp
#QBittorrent
sudo add-apt-repository -y ppa:qbittorrent-team/qbittorrent-stable
#Popurri, Java 6, Java 7
sudo add-apt-repository -y ppa:noobslab/apps
#TimeShift
#sudo add-apt-repository -y ppa:teejee2008/ppa
#Java
sudo add-apt-repository -y ppa:nilarimogard/webupd8
#F.lux
sudo add-apt-repository -y ppa:nathan-renniewaldock/flux
#Sublime Text 3
echo "deb http://ppa.launchpad.net/webupd8team/sublime-text-3/ubuntu artful main "| sudo tee -a /etc/apt/sources.list.d/sublimetext3.list
#Brackets
sudo add-apt-repository -y ppa:webupd8team/brackets
#Typora
sudo add-apt-repository -y 'deb https://typora.io/linux ./'
#LibreOffice
sudo add-apt-repository -y ppa:libreoffice/ppa
#Docker
sudo add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
#Kubernetes (kubectl)
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
#SoftEther (vpn)
sudo add-apt-repository -y ppa:paskal-07/softethervpn
#Virtualbox
echo "deb https://download.virtualbox.org/virtualbox/ubuntu $(lsb_release -sc) contrib" | sudo tee -a /etc/apt/sources.list.d/virtualbox.list
#Remember The Milk
echo "deb https://www.rememeberthemilk.com/download/linux/debian jessie main" | sudo tee -a /etc/apt/sources.list.d/rtm.list
#Insync
echo "deb https://apt.insynchq.com/ubuntu $(lsb_release -sc) non-free contrib" | sudo tee -a /etc/apt/sources.list.d/insync.list
#Vivaldi
sudo add-apt-repository 'deb http://repo.vivaldi.com/archive/deb/ stable main'
#Balena Etcher 
echo "deb https://deb.etcher.io stable etcher" | sudo tee /etc/apt/sources.list.d/balena-etcher.list




#Refresh package manager
sudo pkcon refresh
