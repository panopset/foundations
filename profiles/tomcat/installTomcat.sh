# installTomcat.sh
#############################################################################
#
#   Tomcat install script
#
#############################################################################
# This is a little different than the instructions found here:
# https://www.digitalocean.com/community/tutorials/how-to-install-apache-tomcat-8-on-ubuntu-14-04
# We're using Oracle JDK instead.
#############################################################################
# Create tomcat user, install tomcat, and update directory permissions.
#############################################################################
sudo apt install oracle-java8-set-default
sudo groupadd tomcat
sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat
pushd /tmp
curl -O http://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.38/bin/apache-tomcat-8.0.38.tar.gz
sudo mkdir -p /opt/tomcat
sudo tar xzvf apache-tomcat-8*tar.gz -C /opt/tomcat --strip-components=1
popd
pushd /opt
sudo chgrp -R tomcat tomcat
sudo chown -R tomcat tomcat
popd
pushd /opt/tomcat
sudo chmod g+rwx conf
sudo chmod g+r conf/*
sudo update-alternatives --config java
popd
popd
