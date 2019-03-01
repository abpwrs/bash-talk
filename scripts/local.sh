#!/usr/bin/env bash
# Author: alexander
# Thu Feb 28 21:00:29 CST 2019

# what does local do in bash?
function local_test () {
    local a="Bye"
    b=${USER}
    echo "${a} ${b}"   
}


a="Hello"
b="World"

echo "${a} ${b}"
local_test
echo "${a} ${b}"
