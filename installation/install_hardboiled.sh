#!/usr/bin/env bash
# -*- Mode: sh; coding: utf-8; indent-tabs-mode: nil; tab-width: 4 -*-
#
# Author:
#   bi1a1y, ubidragon
#
# 
# Description:
#   A post-installation bash script KDE Neon

#-----install virtualbox--------------------------------------------------------------------------------
#sudo apt-get install -yy virtualbox
sudo adduser vm vboxusers
#cd ~/Scripts/KDE_Neon_PostInstallScript/

#-----download and install deb packages-----------------------------------------------------------------
#mkdir -p -v ~/KDE_Neon_PostInstallScript/dls
cd ~/Descargas/

#-----install gitkraken---------------------------------------------------------------------------------
sudo mkdir gitkraken && cd gitkraken
sudo wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i gitkraken-amd64.deb
cd ~/Descargas/
sudo rm -rf gitkraken

#-----install flameshot---------------------------------------------------------------------------------
sudo mkdir flameshot && cd flameshot
sudo wget https://github.com/lupoDharkael/flameshot/releases/download/v0.6.0/flameshot_0.6.0_bionic_x86_64.deb
sudo dpkg -i flameshot_*.deb
cd ~/Descargas/
sudo rm -rf flameshot

#-----config docker--------------------------------------------------------------------------------
sudo usesudo rmod -aG docker $USER

#-----GUI Portainer---------------------------------------------------------------------------------
docker volume create portainer_data
docker run -d -p 8000:8000 -p 9000:9000 --restart=unless-stopped -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer

#-----install minikube--------------------------------------------------------------------------------
curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
chmod +x minikube
sudo install minikube /usr/local/bin

#-----install Anydesk--------------------------------------------------------------------------------
sudo mkdir anydesk && cd anydesk
sudo wget https://download.anydesk.com/linux/anydesk_5.1.2-1_amd64.deb
sudo dpkg -i anydesk*.deb
cd ~/Descargas/
sudo rm -rf anydesk

#-----install Autofirma--------------------------------------------------------------------------------
sudo mkdir autofirma && cd autofirma
sudo wget https://estaticos.redsara.es/comunes/autofirma/currentversion/AutoFirma_Linux.zip
unzip AutoFirma_Linux.zip -d autofirma/
sudo dpkg -i AutoFirma*.deb
cd ~/Descargas/
sudo rm -rf autofirma

#-----install Openfortigui--------------------------------------------------------------------------------
sudo mkdir openforti && cd openforti
sudo wget https://apt.iteas.at/iteas/pool/main/o/openfortigui/openfortigui_0.8.0-1_amd64_bionic.deb
sudo dpkg -i openfortigui*.deb
cd ~/Descargas/
sudo rm -rf openforti

#-----install oh_my_zsh--------------------------------------------------------------------------------
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

#-----install Kvantum----------------------------------------------------------------------------------
unzip https://github.com/tsujan/Kvantum/archive/master.zip
cd Kvantum-master/Kvantum
sudo mkdir build && cd build
sudo cmake .. && make && sudo make install

