#!/usr/bin/env bash
# -*- Mode: sh; coding: utf-8; indent-tabs-mode: nil; tab-width: 4 -*-
#
# Author:
#   bi1a1y
#
# Description:
#   A post-installation bash script for seting up realvnc
#   https://www.realvnc.com/docs/deployment-script.html


############# Download #############
# Download and unpack the latest archive on a 64-bit Debian-compatible system:
cd ~/Downloads/
curl -L -o VNC.tar.gz https://www.realvnc.com/download/binary/latest/debian/64-bit/
tar xvf VNC.tar.gz
# Download the latest archive on a 32-bit Debian-compatible system:
# curl -L -o VNC.tar.gz https://www.realvnc.com/download/binary/latest/debian/32-bit/
# Download the latest archive on a 64-bit Red Hat-compatible system:
# curl -L -o VNC.tar.gz https://www.realvnc.com/download/binary/latest/redhat/64-bit/
# Download the latest archive on a 32-bit Red Hat-compatible system:
# curl -L -o VNC.tar.gz https://www.realvnc.com/download/binary/latest/redhat/32-bit/

############# Install VNC Server and VNC Viewer #############
# Install VNC Server and VNC Viewer on a Debian-compatible system (package names need editing):
sudo dpkg -i VNC-Server*.deb VNC-Viewer*.deb
# Install VNC Server and VNC Viewer on a Red Hat-compatible system:
# sudo rpm -U <VNC-Server>.rpm <VNC-Viewer>.rpm

############# License VNC Server #############
# Enterprise subscription only. More information:
# man vnclicense
# Apply a license key (available from the Deployment page of your RealVNC account):
#sudo vnclicense -add <XXXXX-XXXXX-XXXXX-XXXXX-XXXXX>
# Optionally enable cloud connectivity for VNC Server in Service Mode (token available with key):
#sudo vncserver-x11 -service -joinCloud <token>

############# Specify a VNC password for VNC Server #############
# Mandatory for Home subscription. More information:
# man vncpasswd
# Specify a VNC password for VNC Server in Service Mode:
sudo vncpasswd /root/.vnc/config.d/vncserver-x11
# Enterprise subscription only. Specify a VNC password for VNC Server in Virtual Mode:
#vncpasswd ~/.vnc/config.d/Xvnc


############# Enable domain users to connect to VNC Server using system credentials #############
# Recommended for Enterprise and Professional subscriptions (by default, only local password store is checked). More information:
# man vncinitconfig
# Share the common PAM configuration on a Debian-compatible system with VNC Server:
echo -e '@include common-auth\n@include common-account\n@include common-session' | sudo tee /etc/pam.d/vncserver.custom
# Share the common PAM configuration on a Red Hat-compatible system with VNC Server:
# echo -e 'auth include password-auth\naccount include password-auth\nsession include password-auth' | sudo tee /etc/pam.d/vncserver.custom
# Register the common PAM configuration with VNC Server:
echo 'PamApplicationName=vncserver.custom' | sudo tee -a /etc/vnc/config.d/common.custom

############# Configure and start VNC Server in Service Mode #############
# Mandatory for Home and Professional subscriptions. More information:
# man vncserver-x11-serviced
# Optionally change registered users and permissions (by default, root user and admin group have full access):
# echo 'Permissions=%admin:f,dev.acme.com\\johndoe:d,janedoe:v' | sudo tee -a /root/.vnc/config.d/vncserver-x11
# Optional for Enterprise subscription only. Change the listening port for direct connections (by default, 5900):
# echo 'RfbPort=4999' | sudo tee -a /root/.vnc/config.d/vncserver-x11

# Start VNC Server on a Linux system using initd:
# sudo /etc/init.d/vncserver-x11-serviced start
# Start VNC Server on a Linux system using systemd:
sudo systemctl start vncserver-x11-serviced.service

# Restart VNC Server each time a Debian-compatible system is booted using initd:
# sudo update-rc.d vncserver-x11-serviced defaults
# Restart VNC Server each time a Red Hat-compatible system is booted using initd:
# sudo chkconfig --add vncserver-x11-serviced
# Restart VNC Server each time a Linux system is booted using systemd:
sudo systemctl enable vncserver-x11-serviced.service


############# Prepare a system for VNC Server in Virtual Mode #############
# Enterprise subscription only. Recommended for Ubuntu 13.04+ and Fedora 19+. More information: https://support.realvnc.com/Knowledgebase/Article/View/345/
# Install a desktop environment suitable for virtualization (for example, LXDE) on Ubuntu 13.04+:
#sudo apt-get install lxde
# Install LXDE on Fedora 19+:
# sudo yum install @lxde-desktop
# Use LXDE instead of the console desktop environment (if any) for all virtual desktops:
#echo -e '#!/bin/sh\nDESKTOP_SESSION=LXDE\nexport DESKTOP_SESSION\nstartlxde\nvncserver-virtual -kill $DISPLAY' | sudo #tee /etc/vnc/xstartup.custom
#sudo chmod +x /etc/vnc/xstartup.custom
# Note also the following: hostname must be resolvable, xauth on PATH, and iptables suitably configured.



############# Configure and start VNC Server in Virtual Mode #############
# Enterprise subscription only. The daemon may be more convenient; see below. More information:
# man vncserver-virtual
# Optionally change registered users and permissions (by default, user starting VNC Server has full access):
# echo 'Permissions=:f,dev.acme.com\\johndoe:d,janedoe:v' | tee -a ~/.vnc/config.d/Xvnc
# Optionally specify virtual desktop geometries (first is the default, largest is the maximum). Connected users can cycle between using xrandr:
# echo 'RandR=1280x800,800x600,1024x768,1200x900,1280x720,1800x1024' | tee -a ~/.vnc/config.d/Xvnc
# Start VNC Server on port 5900+<next-available-display>, for example 5901. Note, do not start as root user:
#vncserver-virtual


############# Configure and start VNC Server in Virtual Mode daemon #############
# Enterprise subscription only. More information:
# man vncserver-virtuald
# Mandatory if SELinux is Enforcing. Turn Avahi service discovery off:
#echo 'ServiceDiscoveryEnabled=false' | sudo tee -a /etc/vnc/config.d/Xvnc
# Recommended. Restrict registered users and permissions (by default, any user can connect using system credentials):
#echo 'Permissions=root:f,%teachers:d,%pupils:v' | sudo tee -a /root/.vnc/config.d/vncserver-virtuald
# Optionally change the listening port (by default, 5999):
# echo 'DaemonPort=6051' | sudo tee -a /root/.vnc/config.d/vncserver-virtuald

# Start VNC Server on a Linux system using initd:
#sudo /etc/init.d/vncserver-virtuald start
# Start VNC Server on a Linux system using systemd:
# sudo systemctl start vncserver-virtuald.service

# Restart VNC Server each time a Debian-compatible system is booted using initd:
#sudo update-rc.d vncserver-virtuald defaults
# Restart VNC Server each time a Red Hat-compatible system is booted using initd:
# sudo chkconfig --add vncserver-virtuald
# Restart VNC Server each time a Linux system is booted using systemd:
# sudo systemctl enable vncserver-virtuald.service


cd ~/Scripts/KDE_Neon_PostInstallScript/
