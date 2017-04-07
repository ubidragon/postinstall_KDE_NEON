KDE_Neon_PostInstallScript

mkdir -v ~/Scripts
git clone https://github.com/bilalY/postinstall_KDE_NEON.git
chmod -R +x ~/Scripts/postinstall_KDE_NEON/
cd ~/Scripts/postinstall_KDE_NEON/
./post-installation.sh
