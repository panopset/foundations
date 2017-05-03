# assemblyLine.sh
#############################################################################
#
# Purpose:
#
#   Assemble exec.sh script for an Apache Tomcat server installation on 
#   an Ubuntu 16.04 system.
#
#############################################################################
. ../../init.sh
. init.sh
cat init.sh > exec.sh
cat clean.sh >> exec.sh
cat addTomcatUser.sh >> exec.sh
cat installTomcat.sh >> exec.sh
