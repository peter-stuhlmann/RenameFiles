#!/bin/bash

file_extension=()

if [[ $# -lt 1 ]]; then
  printf "Syntax error! Please enter a file extension.\n"
else
  for i in $@; do
    case $i in
    -png) file_extension+=('png') ;;
    -jpg) file_extension+=('jpg') ;;
    esac
  done

  for i in *.${file_extension[@]}
    do mv "$i" "TEST-${i/.${file_extension[@]}}".${file_extension[@]}
  done

fi