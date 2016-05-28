#Introduction

These instructions were tested on a [digitalocean](http://www.digitalocean.com) [Ubuntu](http://www.ubuntu.com) server.

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

   
#Run

Make sure you have changed the password in files/tomcat-users.xml.

Change over to this directory if you haven't already done so.

    cd foundations/profiles/tomcat

Run the script that will copy a generated exec.sh script
over to your jenkins server, and execute it remotely.
 
    ./go.sh




