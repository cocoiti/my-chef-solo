my-chef-solo
============

my chef-solo


## for debian

    # need sudo & git 
    git clone https://github.com/cocoiti/my-chef-solo
    cd ./my-chef-solo/
    git submodule init 
    git submodule update 
    bash ./bin/debian-chef-solo-install.bash

## install .ssh/authorized_keys from github
    bash ./bin/make_authorized_keys.bash cocoiti(your github account)

## install & run

    sudo chef-solo -c config/develop/solo.rb -j config/develop/solo.json 
