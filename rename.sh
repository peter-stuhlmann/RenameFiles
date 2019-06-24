#!/bin/bash

# colors
CYAN='\033[0;36m'
GREEN='\033[0;32m'
RED='\033[0;31m'
COLORRESET='\033[0m'

TITLE=$2
file_extension=()

if [[ $# -lt 2 ]]; then
  printf "${RED}Syntax error! ${COLORRESET}Please enter a file extension.\n"
else
  for i in $@; do
    case $i in
    -png) file_extension+=('png') ;;
    -jpg) file_extension+=('jpg') ;;
    esac
  done

  for i in *.${file_extension[@]}
    do mv "$i" "${TITLE}-${i/.${file_extension[@]}}".${file_extension[@]}
  done

fi