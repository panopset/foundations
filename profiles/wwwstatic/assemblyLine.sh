# assemblyLine.sh
#############################################################################
#
# Purpose:
#
#   Assemble exec.sh script.  Call this script directly to preview exec.sh.
#
#############################################################################
. ../../init.sh
. init.sh
cat init.sh > exec.sh
cat installHttp.sh >> exec.sh
