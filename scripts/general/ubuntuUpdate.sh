# ubuntuUpdate.sh
#############################################################################
#
#   Run update and upgrade.
#
#############################################################################
sudo apt-get -y update

#http://askubuntu.com/questions/104899/make-apt-get-or-aptitude-run-with-y-but-not-prompt-for-replacement-of-configu
sudo apt-get -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold" dist-upgrade

sudo apt-get -y upgrade

