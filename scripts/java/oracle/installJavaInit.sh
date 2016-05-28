# installJavaInit.sh
#############################################################################
#
#   Setup replacement of IcedTea with Oracle Java.
#
#############################################################################
sudo apt-add-repository -y ppa:webupd8team/java
echo debconf shared/accepted-oracle-license-v1-1 select true | \
  sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | \
  sudo debconf-set-selections