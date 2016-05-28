# go.sh
#############################################################################
#
#   One step remote initial setup of a new Tomcat server.
#
#############################################################################

#############################################################################
# Assemble, copy, and remotely execute and delete the exec.sh script.
#############################################################################
. init.sh
./assemblyLine.sh
scp files/tomcat.service test:/etc/systemd/system/
scp files/rc.local test:/etc/
chmod +x exec.sh
scp exec.sh ${SERVER_NAME}:/usr/local/bin/
ssh ${SERVER_NAME} 'exec.sh' > exec.log

#############################################################################
# Uncomment this line if you want to clear exec.sh when done.
#############################################################################
#ssh ${SERVER_NAME} 'rm /usr/local/bin/exec.sh'
