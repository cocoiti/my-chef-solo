my-chef-solo
============

my chef-solo

# chef install

## for debian

    # need sudo & git 
    git clone https://github.com/cocoiti/my-chef-solo
    cd ./my-chef-solo/
    sudo bash ./bin/debian-chef-solo-install.bash

# install & run

    sudo chef-solo -c config/develop/solo.rb -j config/develop/solo.json 
