#!/bin/bash

# Make config folder if it doesn't exist
mkdir -p ~/.config

# DELETE NVIM CONFIG
rm -rf ~/.config/nvim

# Recreate nvim config

THIS_FILEPATH=$(dirname $0)
NVIM_FOLDER=$(realpath $THIS_FILEPATH/../nvim)

mkdir ~/.config/nvim
echo "package.path = package.path .. \";$NVIM_FOLDER/?.lua\"" > ~/.config/nvim/init.lua
echo "require(\"bob\")" >> ~/.config/nvim/init.lua
