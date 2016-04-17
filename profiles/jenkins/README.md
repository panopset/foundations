#Introduction

These instructions were tested on a $5/mo [digitalocean](http://www.digitalocean.com) [Ubuntu](http://www.ubuntu.com) server.

#Define Jenkins on your workstation

Add an entry to your .ssh/config file for your jenkins server, something like:

    Host jenkins
    Hostname <your host IP>
    User root
    IdentityFile ~/.ssh/<your ID file>
    
If you haven't already done so, restrict access to your private key:

    chmod 400 ~/.ssh/<your ID file>
    
Define your new server in your /etc/hosts file:
    
    <your host IP> jenkins

   
#Run

Change over to this directory if you haven't already done so.

    cd foundations/profiles/jenkins

Run the script that will copy a generated exec.sh script
over to your jenkins server, and execute it remotely.
 
    ./go.sh

#Verify

From your [jenkins](http://jenkins:8080) server, you can do some verification, to check to make sure you have SWAP configured, and 
that your Jenkins server, running in a java process, is listening 
on port 8080:

    htop
    netstat-tulpn | grep 8080

#Configure [Jenkins](http://jenkins:8080)

Use the git and java paths you already have:

    /usr/bin/git
    $JAVA_HOME
    


