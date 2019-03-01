#!/usr/bin/env bash
# Author: alexander
# Thu Feb 28 21:11:30 CST 2019

a (){
    echo "inside of a"
}

function b (){
    echo "inside of b"
}

c (){
    echo "entering c"
    a
    b
    echo "leaving c"
}

a 
c 
b