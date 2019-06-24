#!/bin/bash

TITLE=$2
file_extension=()

if [[ $# -lt 2 ]]; then
  printf "Syntax error! Please enter a file extension.\n"
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