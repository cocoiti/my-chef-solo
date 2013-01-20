my-chef-solo
============

my chef-solo

# chef install

## for debian

    # need sudo 
    wget -O - https://gist.github.com/raw/0bd8c4e27ec231df18e2/7841464fb0b0d125590a89fba6e5f243f7e766b5/chef-solo.bash | sudo bash
    sudo apt-get install -y git

# install & run

    git clone https://github.com/cocoiti/my-chef-solo
    cd ./my-chef-solo/
    sudo chef-solo -c config/develop/solo.rb -j config/develop/solo.json 
