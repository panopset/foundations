# assemblyLine.sh
#############################################################################
#
#   Assemble exec.sh script.  Call this script directly to preview exec.sh.
#
#############################################################################
. ../../init.sh
. init.sh
cat init.sh > exec.sh
cat ${SCRIPTS}/general/addSwap.sh >> exec.sh
cat ${SCRIPTS}/java/oracle/installJavaInit.sh >> exec.sh
cat installJenkinsInit.sh >> exec.sh
cat ${SCRIPTS}/general/ubuntuUpdate.sh >> exec.sh
cat ${SCRIPTS}/general/mustHaves.sh >> exec.sh
cat ${SCRIPTS}/java/oracle/installJava.sh >> exec.sh
cat installJenkins.sh >> exec.sh
cat ${SCRIPTS}/general/stopServices.sh >> exec.sh
cat ${SCRIPTS}/general/reboot.sh >> exec.sh

