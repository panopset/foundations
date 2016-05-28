# go.sh
#############################################################################
#
#   One step remote initial setup of a new Apache http server.
#
#############################################################################

#############################################################################
# Assemble, copy, and remotely execute and delete the exec.sh script.
#############################################################################
. ./assemblyLine.sh
chmod +x exec.sh
scp exec.sh ${SERVER_NAME}:/usr/local/bin/
ssh ${SERVER_NAME} 'exec.sh' > exec.log
scp files/rc.local ${SERVER_NAME}:/etc/

#############################################################################
# Uncomment this line if you want to clear exec.sh when done.
#############################################################################
#ssh ${SERVER_NAME} 'rm /usr/local/bin/exec.sh'
