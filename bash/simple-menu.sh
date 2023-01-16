#!/bin/bash

function menu() {
    STAY_IN_MENU=true
    while "$STAY_IN_MENU"
    do
      read -r -p "Continue with the script? (y/N):";
      if [ "$REPLY" == "y" ]; then
      STAY_IN_MENU=false
      echo "Continuing...";
      elif [ "$REPLY" == "N" ]; then
      echo "exiting script"
      exit 1
      else
      echo "Please enter y or N"
      fi 
    done
}

function main() {
  menu
}

main