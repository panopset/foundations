# assemblyLine.sh
#############################################################################
#
# Purpose:
#
#   Assemble exec.sh script.  Call this script directly to preview exec.sh.
#
#############################################################################
. ../../init.sh
cat ${SCRIPTS}/java/oracle/installJavaInit.sh > exec.sh
cat ${PROFILES}/jenkins/installJenkinsInit.sh >> exec.sh
cat workstationMustHavesInit.sh >> exec.sh
cat ${SCRIPTS}/general/ubuntuUpdate.sh >> exec.sh
cat ${SCRIPTS}/general/mustHaves.sh >> exec.sh
cat ${SCRIPTS}/java/oracle/installJava.sh >> exec.sh
cat workstationMustHaves.sh >> exec.sh
cat ${PROFILES}/jenkins/installJenkins.sh >> exec.sh
cat ${SCRIPTS}/chrome/installChrome.sh >> exec.sh
