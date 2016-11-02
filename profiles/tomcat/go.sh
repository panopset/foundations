# go.sh
#############################################################################
#
#   One step remote initial setup of a new Tomcat server.
#
#############################################################################

#############################################################################
# Assemble, copy, and remotely execute and delete the exec.sh script.
#############################################################################
. ./assemblyLine.sh
echo "Updating ${1}"
scp files/tomcat.conf ${1}:/etc/init
#scp files/rc.local ${1}:/etc/
chmod +x exec.sh
scp exec.sh ${1}:/usr/local/bin/
scp files/init.sh /etc/profile.d/
ssh ${1} 'exec.sh' > exec.log

#############################################################################
# Uncomment this line if you want to clear exec.sh when done.
#############################################################################
#ssh ${1} 'rm /usr/local/bin/exec.sh'
