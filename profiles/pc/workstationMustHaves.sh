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

# Software that is not open source.
sudo apt-get -y install linux-firmware-nonfree 

# Android
#https://developer.android.com/studio/install.html
#http://askubuntu.com/questions/637113/unable-to-locate-package-lib32bz2-1-0
sudo apt-get -y install lib32z1 lib32ncurses5 lib32bz2-1.0 libbz2-1.0:i386 lib32stdc++6 gmtp
#... and you'll still need to do this manually, after android sdk is installed:
#https://mike42.me/blog/how-to-edit-emulator-flags-in-android-studio.

# Servers
# apache2
sudo apt-get -y install apache2

#tomcat8, getting it from netbeans for now.
#sudo apt-get -y install tomcat8

# Git config
git config --global push.default simple


