# workstationMustHaves.sh
#############################################################################
#
# Purpose:
#
#   Ubuntu programs you'll want for a workstation.
#
#############################################################################
sudo apt-get -y install unetbootin extlinux lib32z1 lib32z1-dev build-essential mtp-tools mtpfs 
sudo apt-get -y install traceroute multiarch-support vim 
sudo apt-get -y install wget filezilla git gitk git-gui
sudo apt-get -y install subversion ssh authbind cpu-checker samba 
sudo apt-get -y install ant maven gradle npm

# Mint/Ubuntu software that is not open source.
sudo apt-get -y install linux-firmware-nonfree 

# Servers
sudo apt-get -y install apache2 tomcat8
