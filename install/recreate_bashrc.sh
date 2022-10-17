#!/bin/bash

# DELETE BASHRC
rm ~/.bashrc

# Recreate bashrc

THIS_FILEPATH=$(dirname $0)
SOURCEABLE_FOLDER=$(realpath $THIS_FILEPATH/../sourceable)

for i in $SOURCEABLE_FOLDER/*
do
    echo "source $i" >> ~/.bashrc
done