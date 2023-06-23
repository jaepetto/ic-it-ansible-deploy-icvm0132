#!/usr/bin/env bash

CONTINUE=TRUE

# Check if the current user has sudo privileges
if [[ $(sudo -n id -u) != 0 ]]; then
    CONTINUE=FALSE
fi

# Check if the docker group exists
if ! grep -q docker /etc/group; then
    CONTINUE=FALSE
fi

# Check if the user is not already in the docker group
if id -nG "$USER" | grep -qw docker; then
    CONTINUE=FALSE
fi

# Add the user to the docker group
if [[ "$CONTINUE" == "TRUE" ]]; then
    sudo usermod -aG docker "$USER"
    echo "You have been added to the docker group. Please log out and log back in for the changes to take effect."
fi
