#!/bin/bash

# iin = install if not

iin_apt () {
	local INSTALLED=$(dpkg-query -W --showformat='${Status}\n' $1|grep "install ok installed")
	if [ -n "$INSTALLED" ];
	then echo $1 is installed.
	else 
		echo installing $1
		sudo apt install -y $1
	fi
}

iin_aptget () {
	local INSTALLED=$(dpkg-query -W --showformat='${Status}\n' $1|grep "install ok installed")
	if [ -n "$INSTALLED" ];
	then echo $1 is installed.
	else 
		echo installing $1
		sudo apt-get install -y $1
	fi
}

# prepare environment

sudo apt update
sudo apt-get update

# install stuff

## editors
# iin_apt neovim

## js
iin_apt nodejs
iin_apt npm

## rust
iin_apt cargo