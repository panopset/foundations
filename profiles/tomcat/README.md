# Get the script.

    git clone https://github.com/panopset/foundations.git


# Verify JAVA_HOME


If you don't have the, JDK (you won't on a new [digitalocean](http://digitalocean.com) Ubuntu 16.04 server):

    sudo apt-get update
    sudo apt-get -y install default-jdk
    
Verify the JAVA_HOME property in tomcat.service is correct, prior to running this script:
    
    cd foundations/profiles/tomcat
    vim tomcat.service

#Install and start tomcat

    ./go.sh
    sudo systemctl start tomcat

# Workstation

If you installed this on your workstation, this link should now work:

[http://localhost:8080](http://localhost:8080)


# Troubleshooting

To see the script without executing it:

    ./assemblyline.sh
    vim exec.sh
