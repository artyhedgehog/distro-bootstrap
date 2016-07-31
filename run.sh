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
sudo apt-get install -y git htop emacs whois zsh clipit mc ipython shutter unrar shntool cuetools flac cmake checkinstall
sudo apt-get install -y yakuake calibre gparted baobab clementine vlc krusader kdiff3 
sudo apt-get install -y adobe-flashplugin
sudo apt-get install -y oracle-java8-installer oracle-java8-set-default
sudo apt-get install -y android-tools-adb
sudo apt-get install -y wine1.8-amd64 wine1.8 winetricks
sudo apt-get install -y mysql-server-5.5 php5 php5-cli php5-intl php5-mysql php5-memcache php5-imagick php5-gd php5-dev memcached php5-apcu php5-sqlite php5-pgsql php5-xdebug php5-readline
sudo apt-get install evolvere-icon-suite -y

# http://keepass.info
# sudo apt-get install -y keepass2

# Uncertain, used for no pulseaudio
# sudo apt-get install alsa-base alsa-tools alsa-tools-gui alsa-utils alsa-oss alsamixergui libalsaplayer0

# sudo apt-get install kde-standard kdesudo kscreen kde-touchpad

#####################
# Removing garbage: #
#####################
sudo apt-get remove -y ktorrent amarok dragonplayer

###################################
# Installing downloaded packages: #
###################################
sudo apt-get -s install -y packages/*.deb

###########################
# Raw added lines follow: #
###########################
sudo apt-get install python-pip build-essential python-dev
sudo pip install Glances
sudo pip install PySensors
