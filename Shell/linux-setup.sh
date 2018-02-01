#!/bin/bash

# This script will demonstrate how to check for directories and
# will customize based off config files found in:
# https://github.com/rmdcoding/linux_configs

#Variables
HOSTNAME=$(hostname)
SCRIPTS=scripts
LINUX_CFG=linux_configs

echo "Beginning Customization of $HOSTNAME"

#Download scripts from repo if not there
if [ ! -d $LINUX_CFG ]; then   

    if ! git clone https://github.com/rmdcoding/linux_configs;
    then echo "Cloning linux_configs directory failed.";
	 exit 1;
    fi
fi

#Setup bashrc
if ! cp linux_configs/bash_setup ~/.bashrc;
then echo "Not able to setup bashrc.";
     exit 1;
fi

#Setup emacs config
#Assumes emacs.d directory has been created.
if ! cp linux_configs/emacs_setup ~/.emacs.d/init.el;
then echo "Not able to setup emacs config.";
     exit 1;
fi

#Clone the scripts repo.
if [ ! -d $SCRIPTS ]; then
    
    if ! git clone https://github.com/rmdcoding/scripts;
    then "Not able to clone scripts directory."
	 exit 1;
    fi
fi

echo "Customization finished."
