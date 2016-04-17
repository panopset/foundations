# installChrome.sh
#############################################################################
#
#   Install chrome.
#
#   http://askubuntu.com/questions/79280
#
#############################################################################
sudo apt-get -y install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb
#http://blog.manishchhabra.com/2012/05/installing-google-chrome-in-ubuntu-fix-error-for-missing-package-libcurl3-libnss3-1d-libxss1/
sudo apt-get install -f

