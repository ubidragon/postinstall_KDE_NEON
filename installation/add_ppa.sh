#!/usr/bin/env bash
# -*- Mode: sh; coding: utf-8; indent-tabs-mode: nil; tab-width: 4 -*-
#
# Author:
#   bi1a1y
#
# Description:
#   Add PPA's

sudo add-apt-repository -y "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe restricted multiverse"
sudo apt-add-repository -y ppa:maarten-baert/simplescreenrecorder
sudo add-apt-repository -y ppa:otto-kesselgulasch/lightzone
sudo add-apt-repository -y ppa:danielrichter2007/grub-customizer
sudo add-apt-repository -y ppa:unit193/encryption
sudo add-apt-repository -y ppa:peek-developers/stable
sudo add-apt-repository -y ppa:dawidd0811/neofetch
sudo add-apt-repository -y ppa:webupd8team/y-ppa-manager
sudo add-apt-repository -y ppa:nilarimogard/webupd8
sudo add-apt-repository -y ppa:webupd8team/atom
sudo add-apt-repository -y ppa:otto-kesselgulasch/gimp
sudo add-apt-repository -y ppa:danielrichter2007/grub-customizer
sudo add-apt-repository -y ppa:qbittorrent-team/qbittorrent-stable
sudo add-apt-repository -y ppa:docky-core/stable
sudo add-apt-repository -y ppa:noobslab/apps
sudo add-apt-repository -y ppa:teejee2008/ppa
#sudo apt-add-repository -y ppa:graphics-drivers/ppa
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3


sudo apt-get update
