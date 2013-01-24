my-chef-solo
============

my chef-solo

# chef install

## for debian

    # need sudo 
    sudo ./bin/debian-chef-solo-install.bash
    sudo apt-get install -y git

# install & run

    git clone https://github.com/cocoiti/my-chef-solo
    cd ./my-chef-solo/
    sudo chef-solo -c config/develop/solo.rb -j config/develop/solo.json 
