# installChrome.sh
#############################################################################
#
#   Install chrome.
#
#   http://askubuntu.com/questions/510056/how-to-install-google-chrome
#
#############################################################################
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add - 
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update 
sudo apt-get install google-chrome-stable

#############################################################################
#   http://askubuntu.com/questions/79280
#   ... not this one anymore.
#############################################################################
#sudo apt-get -y install libxss1 libappindicator1 libindicator7
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#sudo dpkg -i google-chrome*.deb
##http://blog.manishchhabra.com/2012/05/installing-google-chrome-in-ubuntu-fix-error-for-missing-package-libcurl3-libnss3-1d-libxss1/
#sudo apt-get -y install -f

