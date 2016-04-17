# installJava.sh
#############################################################################
#
#   Replace IcedTea with Oracle Java.
#
#############################################################################
sudo apt-get -y install -o Dpkg::Options::="--force-confnew" oracle-java8-installer
ps="export JAVA_HOME=/usr/lib/jvm/java-8-oracle"
sudo echo $ps > /etc/profile.d/initJava.sh
$ps
