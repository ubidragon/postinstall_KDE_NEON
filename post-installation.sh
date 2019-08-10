#!/usr/bin/env bash
# -*- Mode: sh; coding: utf-8; indent-tabs-mode: nil; tab-width: 4 -*-
#
# Author:
#   Ubidragon
#
# Description:
#   A post-installation bash script KDE Neon

#update and upgrade
sudo pkcon refresh && sudo pkcon upgrade -y
echo -e '\e[7mUpdate and Upgrade Complete.\e[0m'
#-----install repos-------------------------------------------------------------------------------------
cd ~/Scripts/postinstall_KDE_NEON/installation/
./add_ppa.sh
echo -e '\e[7mAdding PPAs Completed.\e[0m'

#-----install flashless extras--------------------------------------------------------------------------
cd ~/Scripts/postinstall_KDE_NEON/installation/
./flashless.sh
echo -e '\e[7mFlashless Extras Completed.\e[0m'

#-----install the easy stuff----------------------------------------------------------------------------
cd ~/Scripts/postinstall_KDE_NEON/installation/
./install_easy.sh
echo -e '\e[7mInstalling Easy Packages Complete.\e[0m'

#-----install the hard boiled stuff---------------------------------------------------------------------
cd ~/Scripts/postinstall_KDE_NEON/installation/
./install_hardboiled.sh
echo -e '\e[7mInstalling of Hard Boiled Packages Complete.\e[0m'

#-----further setup--------------------------------------------------------------------------------------
cd ~/Scripts/postinstall_KDE_NEON/installation/
./further_setup.sh
echo -e '\e[7mFurther Setup Complete.\e[0m'
echo -e ''
echo -e ''
echo -e ''
echo -e ''
echo -e ''
echo -e '\e[7mNOTE2: pip install classifier may have failed try command again after restarting the machine.\e[0m'
echo -e 'Post Installation Complete'



