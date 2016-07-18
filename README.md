# foundations
Customizable collection of ubuntu installation scripts.

The profiles folder has a jenkins server setup example and a pc folder, which is how I set up my workstation.  These profiles assemble exec.sh scripts from components found
in the scripts folder.  Some of the goals of this project are to:

* Keep it really simple, no special tools beyond git needed to get going.
* The subtleties of any component only have to be maintained in one place.

To create your own profile, copy an existing profile and modify it.

# Setup

Clone this project, and make its shell scripts executable:

    sudo apt-get install -y git
    mkdir ws
    cd ws
    git clone https://github.com/panopset/foundations.git
    cd foundations

## Jenkins server.
In the profiles/jenkins folder, there are detailed [instructions](./profiles/jenkins/README.md)
on how to set up a jenkins server.

## Workstation.
In the profiles/pc folder, there are detailed [instructions](./profiles/pc/README.md)
on how to do the initial setup of an Ubuntu workstation, right after initial install.

See comments in workstationMustHaves.sh for droid tweak that needs to happen.


