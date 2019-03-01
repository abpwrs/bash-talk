#!/usr/bin/env bash
# Author: abpwrs
# Mon Feb 18 12:40:30 CST 2019

# params
# 1 -- path to replace executable
# 2 -- path to directory with files
# 3 -- character to replace
# 4 -- replacement character

if [ $# -ne 4 ]; then
    echo "Usage:"
    echo "${0} <full-path-to-executable> <full-path-to-data-dir> <char-to-replace> <replacement-char>"
    exit
fi

file_ext='.txt'

pushd ${2}
    echo $(pwd)
    for file_name in ./*${file_ext}; do 
        if [ -f ${ff} ]; then
            echo "Processing ~~~ ${ff}"
            ${1} ${3} ${4} ${ff} "${file_name}_out"
        fi
    done
popd
