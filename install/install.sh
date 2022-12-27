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

## ts
npm i -g typescript

## rust
# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

## dotnet
iin_aptget dotnet6 

## aws cli
#curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
#unzip awscliv2.zip
#sudo ./aws/install

## tools
iin_cargo tokei
iin_cargo lucifer-testing lucifer
npm install -g aws-cdk

## packer (nvim package manager)
#git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
