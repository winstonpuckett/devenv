#!/bin/bash

# prepare environment

THIS_FILEPATH=$(dirname $0)
IIN_PATH=$(realpath $THIS_FILEPATH/iin.sh)
source $IIN_PATH

echo updating package repositories...
sudo apt update > /dev/null
sudo apt-get update > /dev/null
echo done updating package repositories.

# install stuff

## editors
iin_aptget neovim

## js
iin_apt nodejs
iin_apt npm

## rust (not yet idempotent)
# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

## tools
iin_cargo tokei
