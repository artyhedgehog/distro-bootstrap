#!/bin/bash

##############
# Add PPA's: #
##############
sudo add-apt-repository ppa:webupd8team/java -y
sudo add-apt-repository ppa:ubuntu-wine/ppa -y
sudo add-apt-repository ppa:noobslab/evolvere -y
sudo sed -i /^# deb .*partner/ s/^# // /etc/apt/sources.list
sudo apt-get update 

#######################
# Installing software #
#######################
sudo apt install -y git htop emacs24-nox whois zsh clipit mc ipython shutter unrar shntool cuetools flac cmake checkinstall openvpn suckless-tools nfs-kernel-server iotop curl
sudo apt install -y yakuake calibre gparted baobab clementine vlc krusader kdiff3 
sudo apt install -y adobe-flashplugin
sudo apt install -y oracle-java8-installer oracle-java8-set-default
sudo apt install -y android-tools-adb
sudo apt install -y wine1.8-amd64 wine1.8 winetricks
sudo apt install -y mysql-server-5.5 php5 php5-cli php5-intl php5-mysql php5-memcache php5-imagick php5-gd php5-dev memcached php5-apcu php5-sqlite php5-pgsql php5-xdebug php5-readline
sudo apt install evolvere-icon-suite -y


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
for file in packages/*
    do sudo gdebi "$file"
    done

###########################
# Raw added lines follow: #
###########################
