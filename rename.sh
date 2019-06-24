#!/bin/bash

# colors
CYAN='\033[0;36m'
GREEN='\033[0;32m'
RED='\033[0;31m'
COLORRESET='\033[0m'

TITLE=$2
file_extension=()

for i in $@; do
  if [[ $i == '--help' ]] || [[ $i == '-h' ]]; then
    printf "${GREEN}HELP!${COLORRESET}\n"
    exit;
  fi
done

if [[ $# -lt 2 ]]; then
  printf "${RED}Syntax error! ${COLORRESET}Try to run this script with the argument ${GREEN}--help ${COLORRESET}for more information.\n"
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