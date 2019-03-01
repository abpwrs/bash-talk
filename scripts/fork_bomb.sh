#!/usr/bin/env bash
# Author: alexander
# Thu Feb 28 12:09:24 CST 2019

# DO NOT RUN THIS ON YOUR COMPUTER. IT WILL BE BAD!

# Directory making fork bomb
#function fork(){
#    mkdir fork_it
#    pushd fork_it > /dev/null # no output to the screen
#    fork
#}
#
#fork &

# Oneliner from:
# https://askubuntu.com/questions/159491/why-did-the-command-make-my-system-lag-so-badly-i-had-to-reboot
#
# : (){ : | : & }; :
