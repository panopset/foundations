#Introduction

These instructions were tested on a [digitalocean](http://www.digitalocean.com) [Ubuntu 14.04.5 x64](http://www.ubuntu.com) server.

#Setup
##panopset.jar

To use this project, you will need the Panopset [Flywheel](https://github.com/panopset/flywheel) project.

The easiest way to accomplish this is to put [panopset.jar](http://panopset.com/panopset.jar) in your $HOME directory, because it includes flywheel.  

*Optional*

For a completely open source setup, you could use flywheel directly, something like:

    git clone https://github.com/panopset/flywheel.git
    cd flywheel
    gradle build
    cp build/libs/flywheel.jar $HOME/
    cd
    ln -s flywheel.jar panopset.jar
    
... and everything will still work.

#Digitalocean instructions

Create the server, then add it to your hosts and ssl configuration.

    vim /etc/hosts (update IP)
    vim .ssh/config (update IP)

#Run

Run the script that will copy a generated exec.sh script
over to your tomcat server, and execute it remotely.
 
    ./go.sh yourServerName

This will install Tomcat and Oracle JDK.

Once you are satisfied that port 8080 is responding:

##How to set up a user, disable root access through ssl:
https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-14-04

##How to set up https:
https://www.digitalocean.com/community/tutorials/how-to-secure-nginx-with-let-s-encrypt-on-ubuntu-14-04

To avoid having to do this every time you want to swap in a new server, 

    sudo apt-get install nginx

copy over /etc/ssl and /etc/letsencrypt/live from the old server to the new one,
and then put deploy/default in /etc/nginx/sites-available/, and 

    sudo nginx -t
    sudo service nginx restart
    reboot 0

#References

##Follow this tutorial to redirect to 8080 (not for Jenkins here, but for Tomcat, but the principal is the same):
https://www.digitalocean.com/community/tutorials/how-to-configure-nginx-with-ssl-as-a-reverse-proxy-for-jenkins

##Install tomcat:
https://www.digitalocean.com/community/tutorials/how-to-install-apache-tomcat-8-on-ubuntu-14-04
https://www.digitalocean.com/community/tutorials/how-to-configure-nginx-with-ssl-as-a-reverse-proxy-for-jenkins
