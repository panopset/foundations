# addTomcatUser.sh
#############################################################################
#
# Create user.
#
# Reference:
#
# http://stackoverflow.com/questions/14810684/check-whether-a-user-exists
#
#############################################################################
#
#############################################################################

if getent passwd tomcat > /dev/null 2>&1; then
 echo 'user tomcat exists.'
else
 sudo groupadd tomcat
 sudo useradd -s /bin/false -g tomcat -d /opt/tomcat tomcat
fi
