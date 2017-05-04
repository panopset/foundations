# installTomcat.sh
#############################################################################
#
#   Tomcat install script
#
# Reference:
#
# https://www.digitalocean.com/community/tutorials/how-to-install-apache-tomcat-8-on-ubuntu-16-04
#
#############################################################################
#
#############################################################################
# Create tomcat user, install tomcat, and update directory permissions.
#############################################################################
sudo mkdir -p "${DOWNLOADS}"
. ../../downloadFile.sh "http://apache.mirrors.ionfish.org/tomcat/tomcat-${TV}/v${TV}.${MV}/bin/apache-tomcat-${TV}.${MV}.tar.gz"
sudo mkdir -p /opt/tomcat
sudo tar xzvf "${DOWNLOADS}/apache-tomcat-${TV}.${MV}.tar.gz" -C /opt/tomcat --strip-components=1
pushd /opt
sudo chown -R tomcat tomcat
cd tomcat
sudo chmod -R g+r conf
sudo chmod g+x conf
sudo chown -R tomcat webapps/ work/ temp/ logs/
popd
if [ -e /etc/systemd/system/tomcat.service ]
then
echo "tomcat service exists."
else
sudo cp tomcat.service /etc/systemd/system/
sudo systemctl daemon-reload
fi