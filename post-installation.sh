#!/usr/bin/env bash
# -*- Mode: sh; coding: utf-8; indent-tabs-mode: nil; tab-width: 4 -*-
#
# Author:
#   bi1a1y
#
# Description:
#   A post-installation bash script KDE Neon

#update and upgrade
sudo apt-get update && sudo apt-get -y upgrade
echo -e '\e[7mUpdate and Upgrade Complete.\e[0m'
#-----install repos-------------------------------------------------------------------------------------
cd ~/Scripts/KDE_Neon_PostInstallScript/installation/
./add_ppa.sh
echo -e '\e[7mAdding PPAs Completed.\e[0m'

#-----install flashless extras--------------------------------------------------------------------------
cd ~/Scripts/KDE_Neon_PostInstallScript/installation/
./flashless.sh
echo -e '\e[7mFlashless Extras Completed.\e[0m'

#-----install the easy stuff----------------------------------------------------------------------------
cd ~/Scripts/KDE_Neon_PostInstallScript/installation/
./install_easy.sh
echo -e '\e[7mInstalling Easy Packages Complete.\e[0m'

#-----install the hard boiled stuff---------------------------------------------------------------------
cd ~/Scripts/KDE_Neon_PostInstallScript/installation/
./install_hardboiled.sh
echo -e '\e[7mInstalling of Hard Boiled Packages Complete.\e[0m'

#-----install and setup realvnc-------------------------------------------------------------------------
cd ~/Scripts/KDE_Neon_PostInstallScript/installation/
./realvnc_setup.sh
echo -e '\e[7mInstalling and config of realvnc Complete.\e[0m'

#-----install and setup realvnc-------------------------------------------------------------------------
cd ~/Scripts/KDE_Neon_PostInstallScript/installation/
./mount_nas.sh
echo -e '\e[7mNAS mounting Complete.\e[0m'


#-----further setup--------------------------------------------------------------------------------------
cd ~/Scripts/KDE_Neon_PostInstallScript/installation/
./further_setup.sh
echo -e '\e[7mFurther Setup Complete.\e[0m'
echo -e ''
echo -e ''
echo -e ''
echo -e ''
echo -e ''
echo -e '\e[7mNOTE1: RealVNC Still needs user to login to complete setup.\e[0m'
echo -e '\e[7mNOTE2: pip install classifier may have failed try command again after restarting the machine.\e[0m'



