# go.sh
#############################################################################
#
#   One step remote initial setup of a new Jenkins server.
#
#############################################################################

#############################################################################
# Assemble, copy, and remotely execute and delete the exec.sh script.
#############################################################################
. init.sh
./assemblyLine.sh
chmod +x exec.sh
scp exec.sh ${SERVER_NAME}:/usr/local/bin/
ssh ${SERVER_NAME} 'exec.sh'
ssh ${SERVER_NAME} 'rm /usr/local/bin/exec.sh'

