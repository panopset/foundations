# installJavaInit.sh
#############################################################################
#
#   Setup replacement of IcedTea with Oracle Java.
#
#############################################################################
echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | sudo tee /etc/apt/sources.list.d/webupd8team-java.list > /dev/null
echo "deb-src http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main" | sudo tee --append /etc/apt/sources.list.d/webupd8team-java.list > /dev/null
echo "debconf shared/accepted-oracle-license-v1-1 select true" | sudo debconf-set-selections
echo "debconf shared/accepted-oracle-license-v1-1 seen true" | sudo debconf-set-selections
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886

