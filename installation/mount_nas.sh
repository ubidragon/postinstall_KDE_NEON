#!/bin/bash
sudo echo '192.168.0.9:/mnt/ApolloNAS/bilal /mnt/apollo-bilal nfs defaults' | sudo tee -a /etc/fstab
sudo echo '192.168.0.9:/mnt/ApolloNAS/media /mnt/apollo-media nfs defaults' | sudo tee -a /etc/fstab
sudo echo '192.168.0.9:/mnt/ApolloNAS/media_tmp /mnt/apollo-media_tmp nfs defaults' | sudo tee -a /etc/fstab
sudo echo '192.168.0.9:/mnt/ApolloNAS/software /mnt/apollo-software nfs defaults' | sudo tee -a /etc/fstab
sudo echo '192.168.0.9:/mnt/ApolloNAS/tutorials /mnt/apollo-tutorials nfs defaults' | sudo tee -a /etc/fstab
sudo echo '192.168.0.9:/mnt/ApolloNAS/Falestine /mnt/apollo-Falestine nfs defaults' | sudo tee -a /etc/fstab
