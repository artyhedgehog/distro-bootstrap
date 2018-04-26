#!/bin/bash

##############
# Add PPA's: #
##############

sudo add-apt-repository ppa:webupd8team/java -y
sudo add-apt-repository ppa:ubuntu-wine/ppa -y
sudo add-apt-repository ppa:noobslab/evolvere -y
sudo add-apt-repository ppa:danielrichter2007/grub-customizer
sudo sed -i /^# deb .*partner/ s/^# // /etc/apt/sources.list

# pulseaudio-equalizer:
sudo add-apt-repository ppa:nilarimogard/webupd8 -y

# fluxgui:
sudo add-apt-repository ppa:nathan-renniewaldock/flux -y

# peek:
sudo add-apt-repository ppa:peek-developers/stable -y

# yd-tools:
sudo add-apt-repository ppa:slytomcat/ppa

sudo apt-get update 


#######################
# Installing software #
#######################
sudo apt install -y git htop emacs24-nox whois zsh clipit mc ipython shutter unrar shntool cuetools flac cmake checkinstall openvpn suckless-tools nfs-kernel-server iotop curl
sudo apt install -y yakuake calibre gparted baobab clementine vlc krusader kdiff3 redshift
sudo apt install -y adobe-flashplugin
sudo apt install -y oracle-java8-installer oracle-java8-set-default
sudo apt install -y android-tools-adb
sudo apt install -y wine1.8-amd64 wine1.8 winetricks
sudo apt install -y mysql-server-5.5 php5 php5-cli php5-intl php5-mysql php5-memcache php5-imagick php5-gd php5-dev memcached php5-apcu php5-sqlite php5-pgsql php5-xdebug php5-readline
sudo apt install -y evolvere-icon-suite
sudo apt install -y grub-customizer
sudo apt install -y pulseaudio-equalizer
sudo apt install -y krita libgoo-canvas-perl
sudo apt install -y fluxgui

sudo apt install -y rabbitmq-server postgresql
sudo rabbitmq-plugins enable rabbitmq_management

sudo apt install -y peek
sudo apt install -y yd-tools



####################
# Configuring GIT: #
####################
git config --global user.email a.kolomycev@gmail.com
git config --global user.name "Artem B. Kolomycev"
git config --global core.editor "emacs"


#######################################
# Installing python monitoring tools: #
#######################################
sudo apt install -y python-pip build-essential python-dev
sudo pip install Glances
sudo pip install PySensors


#####################
# Removing garbage: #
#####################
sudo apt-get remove -y ktorrent amarok dragonplayer


###################################
# Installing downloaded packages: #
###################################
for file in packages/*.deb
do
    sudo gdebi "$file"
done

mkdir -p ~/Apps
for file in packages/*.tar.*
do
    tar xxf "$file" -C ~/Apps
    echo "$file" untarred into ~/Apps
done


###########################
# Installing custom stuff #
###########################

# node.js:
curl -sL https://deb.nodesource.com/setup_8.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
apt install -y nodejs npm
sudo ln -s /usr/bin/nodejs /usr/bin/node


###########################
# Making home dirs links: #
###########################
[ -d ~/Desktop ] || ln -s '~/Рабочий стол' ~/Desktop
[ -d ~/Downloads ] || ln -s '~/Загрузки' ~/Downloads
[ -d ~/Pictures ] || ln -s '~/Изображения' ~/Pictures
[ -d ~/Documents ] || ln -s '~/Документы' ~/Documents
[ -d ~/Music ] || ln -s '~/Музыка' ~/Music


###########################
# Raw added lines follow: #
###########################
