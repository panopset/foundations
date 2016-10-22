#Introduction

These instructions were tested on a [digitalocean](http://www.digitalocean.com) [Ubuntu 14.04.5 x64](http://www.ubuntu.com) server.

#Setup
##flywheel.jar
Obtain the latest [flywheel.jar](https://github.com/panopset/flywheel) (if you don't find it in your local maven repository, you can build it), 
and put it in $HOME/java/lib. Then, either rename the versioned jar, or create a soft link:

    cd java/lib
    ln -s flywheel-4.18.jar flywheel.jar

##gradle.properties    
Edit gradle.properties, and set the *deploy_domain* value to match your deployment domain name. 

#Digitalocean instructions

Create the server, then add it to your hosts and ssl configuration.

    vim /etc/hosts (update IP)
    vim .ssh/config (update IP)

##How to set up a user, disable root access through ssl:
https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-14-04

##How to set up https:
https://www.digitalocean.com/community/tutorials/how-to-secure-nginx-with-let-s-encrypt-on-ubuntu-14-04

# Configure nginx with ssl as a reverse proxy.

sudo vim /etc/nginx/sites-enabled/default


#Run

Run the script that will copy a generated exec.sh script
over to your tomcat server, and execute it remotely.
 
    ./go.sh

This will install Tomcat on Oracle JDK.

##Follow this tutorial to redirect to 8080 (not for Jenkins here, but for Tomcat, but the principal is the same):
https://www.digitalocean.com/community/tutorials/how-to-configure-nginx-with-ssl-as-a-reverse-proxy-for-jenkins


You should see something like this (your site and email instead), when done:


    IMPORTANT NOTES:
     - Congratulations! Your certificate and chain have been saved at
    /etc/letsencrypt/live/yoursite.com/fullchain.pem. Your cert will
    expire etc. etc.


#References

##Install tomcat:
https://www.digitalocean.com/community/tutorials/how-to-install-apache-tomcat-8-on-ubuntu-14-04
https://www.digitalocean.com/community/tutorials/how-to-configure-nginx-with-ssl-as-a-reverse-proxy-for-jenkins
