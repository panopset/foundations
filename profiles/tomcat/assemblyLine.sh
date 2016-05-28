# assemblyLine.sh
#############################################################################
#
# Purpose:
#
#   Assemble exec.sh script for an Apache Tomcat server installation on 
#   Ubuntu.
#
#############################################################################
. ../../init.sh
. init.sh
cat init.sh > exec.sh
cat ${SCRIPTS}/general/addSwap.sh >> exec.sh
cat ${SCRIPTS}/java/oracle/installJavaInit.sh >> exec.sh
cat ${SCRIPTS}/general/ubuntuUpdate.sh >> exec.sh
cat ${SCRIPTS}/general/mustHaves.sh >> exec.sh
cat ${SCRIPTS}/java/oracle/installJava.sh >> exec.sh
cat installTomcat.sh >> exec.sh
cat ${SCRIPTS}/general/reboot.sh >> exec.sh
