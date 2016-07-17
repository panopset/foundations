# workstationMustHaves.sh
#############################################################################
#
# Purpose:
#
#   Ubuntu programs you'll want for a workstation.
#
#############################################################################

sudo apt -y install unetbootin extlinux build-essential mtp-tools mtpfs 
sudo apt -y install traceroute multiarch-support vim 
sudo apt -y install wget filezilla git gitk git-gui
sudo apt -y install subversion ssh authbind cpu-checker samba 
sudo apt -y install ant maven gradle npm

# Software that is not open source.
sudo apt -y install linux-firmware-nonfree 

# Android
#https://developer.android.com/studio/install.html
#http://askubuntu.com/questions/637113/unable-to-locate-package-lib32bz2-1-0
sudo apt -y install lib32z1 lib32ncurses5 libbz2-1.0:i386 lib32stdc++6

# Servers
sudo apt -y install apache2 tomcat8
