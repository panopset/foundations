# installJenkinsInit.sh
#############################################################################
#
#   Prepare for jenkins install, must be run before apt-get update upgrade.
#
#############################################################################

#############################################################################
# Get the jenkins key and sources:
#############################################################################
echo -e "deb http://pkg.jenkins-ci.org/debian binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list > /dev/null
wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
