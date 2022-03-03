#!/bin/bash

if [[ ! -f `which nvim` ]]; then
# clone last repo of neovim
    git clone --depth=1 --branch=master             \
        https://github.com/neovim/neovim.git        \
        ~/neovim 
    
    cd ~/neovim
    make CMAKE_BUILD_TYPE=Release
    sudo make install
fi
