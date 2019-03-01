#!/usr/bin/env bash
# Author: abpwrs
# Mon Feb 18 12:40:30 CST 2019

# params
# 1 -- path to directory with files
# 2 -- character to replace
# 3 -- replacement character

if [ $# -ne 3 ]; then
    echo "Usage:"
    echo "${0} <dir-of-files> <char-to-replace> <replacement-char>"
    exit
fi

file_ext='.txt'

pushd ${1}
    for file_name in ./*${file_ext}; do 
        if [ -f ${ff} ]; then
            echo "Processing ~~~ ${ff}"
            sed -i.back_up "s/${2}/${3}/g" ${file_name}
        fi
    done
popd
