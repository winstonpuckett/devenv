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

iin_snap () {
	local INSTALLED=$(dpkg-query -W --showformat='${Status}\n' $1|grep "install ok installed")
	if [ -n "$INSTALLED" ];
	then echo $1 is installed.
	else 
		echo installing $1
		sudo snap install $1
	fi
}

iin_cargo () {
	local INSTALLED=$(ls ~/.cargo/bin | grep $1)
	if [ -n "$INSTALLED" ];
	then echo $1 is installed.
	else 
		echo installing $1
		cargo install $1 
	fi
}