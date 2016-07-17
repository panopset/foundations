# cn.sh
#############################################################################
#
# Purpose:
#
#   Update Ubuntu 16.04 desktop to Cinnamon.  Requires reboot, thus the 
#   standalone script, outside the assemblyLine.sh.
#
# Not tested, using MATE for now.
#
#############################################################################

sudo add-apt-repository ppa:embrosyn/cinnamon
sudo apt -y update
sudo apt -y upgrade
sudo apt -y install cinnamon blueberry

# Fix reboot button for Cinnamon
# http://askubuntu.com/questions/691813/cinnamon-desktop-clicking-menu-shutdown-presents-no-real-button-options/692791
gsettings set org.cinnamon.desktop.session settings-daemon-uses-logind true
gsettings set org.cinnamon.desktop.session session-manager-uses-logind true
gsettings set org.cinnamon.desktop.session screensaver-uses-logind false
