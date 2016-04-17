# addSwap.sh
#############################################################################
#
# Setup swap space, you'll want to do this if you are using a server with 
# less than a couple of gigs worth of memory.
#
#############################################################################
sudo touch /var/swap.img
sudo chmod 600 /var/swap.img
sudo fallocate -l ${SWAP_ALLOCATION} /var/swap.img
sudo mkswap /var/swap.img
sudo swapon /var/swap.img
sudo echo -e "/var/swap.img none swap sw 0 0\n" >> /etc/fstab
