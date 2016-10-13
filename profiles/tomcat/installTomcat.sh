# installTomcat.sh
#############################################################################
#
#   Tomcat install script
#
#############################################################################

#############################################################################
# Create tomcat user, install tomcat, and update directory permissions.
#############################################################################
sudo groupadd tomcat
sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat
pushd /tmp
curl -O http://www-us.apache.org/dist/tomcat/tomcat-8/v8.0.37/bin/apache-tomcat-8.0.37.tar.gz
sudo mkdir -p /opt/tomcat
sudo tar xzvf apache-tomcat-8*tar.gz -C /opt/tomcat --strip-components=1
pushd /opt/tomcat
sudo chgrp -R tomcat conf
sudo chmod g+rwx conf
sudo chmod g+r conf/*
sudo chown -R tomcat webapps/ work/ temp/ logs/
sudo update-alternatives --config java
#sudo systemctl daemon-reload
#sudo systemctl enable tomcat
popd
popd
