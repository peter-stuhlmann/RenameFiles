#!/bin/bash

# colors
CYAN='\033[0;36m'
GREEN='\033[0;32m'
RED='\033[0;31m'
COLORRESET='\033[0m'

TITLE=$2

file_extension=()

replace_old_file_name() {
  count=1
  for i in *.${file_extension[@]}
    do mv "$i" "${TITLE}-${count}".${file_extension[@]}
    count=$((count+1));
  done
}

extend_old_file_name() {
  for i in *.${file_extension[@]}
    do mv "$i" "${TITLE}-${i/.${file_extension[@]}}".${file_extension[@]}    
  done
}

play_it_safe() {
  read -p "Do you really want to overwrite all .${file_extension[@]} files in this directory? [Y/n] " REPLY
}

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

  play_it_safe
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    if [[ $3 == '-e' ]]; then
      extend_old_file_name 
    else replace_old_file_name 
    fi
  else printf "${CYAN}The process was canceled. No file is renamed.${COLORRESET}\n"
  fi

fi