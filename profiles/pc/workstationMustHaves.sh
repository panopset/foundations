# workstationMustHaves.sh
#############################################################################
#
# Purpose:
#
#   Ubuntu programs you'll want for a workstation.
#
#############################################################################

sudo apt-get -y install unetbootin extlinux build-essential mtp-tools mtpfs 
sudo apt-get -y install traceroute multiarch-support vim 
sudo apt-get -y install wget filezilla git gitk git-gui
sudo apt-get -y install subversion ssh authbind cpu-checker samba 
sudo apt-get -y install ant maven gradle npm

# Android
#https://developer.android.com/studio/install.html
#http://askubuntu.com/questions/637113/unable-to-locate-package-lib32bz2-1-0
sudo apt -y install lib32z1 lib32ncurses5 libbz2-1.0:i386 lib32stdc++6

# Mint/Ubuntu software that is not open source.
sudo apt-get -y install linux-firmware-nonfree 

# Servers
sudo apt-get -y install apache2 tomcat8

