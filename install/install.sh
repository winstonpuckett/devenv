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
iin_snap nvim --beta --classic

## js (not yet idempotent)
#wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.2/install.sh | bash
#iin_aptget nodejs
#iin_aptget npm

## rust (not yet idempotent)
# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

## dotnet
iin_aptget dotnet6 

## tools
iin_cargo tokei
iin_cargo lucifer-testing lucifer

