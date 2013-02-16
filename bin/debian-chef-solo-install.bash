#!/bin/bash

if test ! -f /etc/apt/sources.list.d/opscode.list
then
    echo "deb http://apt.opscode.com/ `lsb_release -cs`-0.10 main" | sudo tee /etc/apt/sources.list.d/opscode.list
    gpg --fetch-key http://apt.opscode.com/packages@opscode.com.gpg.key
    gpg --export packages@opscode.com | sudo tee /etc/apt/trusted.gpg.d/opscode-keyring.gpg > /dev/null
fi

sudo apt-get -y update
sudo apt-get -y upgrade

DEBIAN_FRONTEND=noninteractive sudo apt-get install -y --force-yes -o Dpkg::Options::="--force-confold" opscode-keyring
echo "chef chef/chef_server_url string none" | sudo debconf-set-selections && DEBIAN_FRONTEND=noninteractive sudo apt-get install chef -y
