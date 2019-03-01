#!/usr/bin/env bash
# Author: abpwrs
# Mon Feb 18 12:37:07 CST 2019

# this script goes through and augments all of the data
# Parameters:
# $1 is the path to the aug.py script
# $2 is the path to the image directory
# $3 is the path to the output directory

if [ $# -ne 4 ]; then
    echo "Usage:"
    echo "${0} <full-path-to-aug-script> <full-path-to-image-dir> <wildcard-for-files> <full-path-to-output-dir>"
    exit
fi

if [ ! -d ${4} ]; then
mkdir -p ${4}
fi

pushd $2
    for image in ./${3}; do 
        if [ -f ${image} ]; then
            python $1 -f ${image} -o ${4} &
            echo "Done Augmenting: ${image}"
        fi
    done
popd
