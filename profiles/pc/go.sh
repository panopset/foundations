# go.sh
#############################################################################
#
# Purpose:
#
#   One step remote initial setup of a Ubuntu flavored Linux PC.
#
#############################################################################

#############################################################################
# Assemble and execute exec.sh.
#############################################################################
./assemblyLine.sh
chmod +x exec.sh
./exec.sh

#############################################################################
# Disable window snap.
#
# Reference: http://askubuntu.com/questions/72452
#############################################################################
gconftool-2 --set /apps/compiz-1/plugins/grid/screen0/options/top_edge_action --type int 0
