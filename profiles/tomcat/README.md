#Introduction

These instructions were tested on a [digitalocean](http://www.digitalocean.com) [Ubuntu 14.04.5 x64](http://www.ubuntu.com) server.

#Define the new Tomcat server on your workstation

Add an entry to your .ssh/config file for your tomcat server, something like:

    Host test
    Hostname <your host IP>
    User root
    IdentityFile ~/.ssh/<your ID file>
    
If you haven't already done so, restrict access to your private key:

    chmod 400 ~/.ssh/<your ID file>
    
Define your new server in your /etc/hosts file:
    
    <your host IP> test

Update init.sh so that the SERVER_NAME matches your new server:

    export SERVER_NAME=test
   
#Digitalocean instructions

##How to set up a user, disable root access through ssl:
https://www.digitalocean.com/community/tutorials/initial-server-setup-with-ubuntu-14-04

##How to set up https:
https://www.digitalocean.com/community/tutorials/how-to-secure-nginx-with-let-s-encrypt-on-ubuntu-14-04

You should see something like this (your site and email instead), when done:


    IMPORTANT NOTES:
     - Congratulations! Your certificate and chain have been saved at
    /etc/letsencrypt/live/yoursite.com/fullchain.pem. Your cert will
    expire etc. etc.

##Follow this tutorial to redirect to 8080 (not for Jenkins here, but for Tomcat, but the principal is the same):
https://www.digitalocean.com/community/tutorials/how-to-configure-nginx-with-ssl-as-a-reverse-proxy-for-jenkins

#Run

Run the script that will copy a generated exec.sh script
over to your tomcat server, and execute it remotely.
 
    ./go.sh

#References

##Install tomcat:
https://www.digitalocean.com/community/tutorials/how-to-install-apache-tomcat-8-on-ubuntu-14-04

