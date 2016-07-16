# setup.sh
#############################################################################
#
#   Jenkins specific part of exec.sh.
#
#############################################################################

#############################################################################
# Set up Jenkins on port 8081, since we have tomcat on 8080.
#############################################################################
sudo apt-get -y install jenkins
sudo sed -i 's/HTTP_PORT=8080/HTTP_PORT=8081/g' /etc/default/jenkins
sudo service jenkins restart

