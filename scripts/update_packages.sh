#!/usr/bin/env bash
# Author: alexander
# Thu Feb 28 12:10:52 CST 2019

# update homebrew and homebrewpackages
function brew_update (){
    brew update && brew upgrade
    brew cleanup && brew doctor
}

# update conda and conda packages
function conda_update (){
    conda update conda
    conda update conda-build
    conda update --all
    conda clean --all
}

case ${1} in
brew)
  echo "updating brew"
  brew_update
  ;;
conda)
  echo "updating conda"
  conda_update
  ;;
*)
  echo "invalid option"
  exit
  ;;
esac

