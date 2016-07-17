# cn.sh
#############################################################################
#
# Purpose:
#
#   Update Ubuntu 16.04 desktop to Cinnamon.  Requires reboot, thus the 
#   standalone script, outside the assemblyLine.sh.
#
#############################################################################

sudo add-apt-repository ppa:embrosyn/cinnamon
sudo apt -y update
sudo apt -y upgrade
sudo apt -y install cinnamon blueberry
