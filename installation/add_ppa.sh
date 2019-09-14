#!/usr/bin/env bash
# -*- Mode: sh; coding: utf-8; indent-tabs-mode: nil; tab-width: 4 -*-
#
# Author:
#   bi1a1y
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
curl -fsSL https://typora.io/linux/public-key.asc | sudo apt-key add -
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
curl -fsSL https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
curl -fsSL http://repo.vivaldi.com/archive/linux_signing_key.pub | sudo apt-key add -
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
sudo echo "deb http://ppa.launchpad.net/webupd8team/sublime-text-3/ubuntu artful main " >> /etc/apt/sources.list
sudo echo "deb-src http://ppa.launchpad.net/webupd8team/sublime-text-3/ubuntu artful main " >> /etc/apt/sources.list
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
sudo add-apt-repository ppa:paskal-07/softethervpn
#Virtualbox
sudo echo "deb https://download.virtualbox.org/virtualbox/debian $(lsb_release -sc) contrib" >> /etc/apt/sources.list
#Remember The Milk
sudo echo "deb https://www.rememeberthemilk.com/download/linux/debian jessie main" >> /etc/apt/sources.list
#Insync
sudo echo "deb https://apt.insynchq.com/ubuntu $(lsb_release -sc) non-free contrib" >> /etc/apt/sources.list
#Vivaldi
sudo add-apt-repository 'deb http://repo.vivaldi.com/archive/deb/ stable main'

#Refresh package manager
sudo pkcon refresh
