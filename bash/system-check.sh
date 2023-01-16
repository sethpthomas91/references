#!/bin/bash

function instruction_message() {
    clear
    echo "This is a simple script that will check your computer for some common software needed for development."
    echo "It will not install the technology, but will check to see if your environment is set up."
    print_section_spacer
}

function continue_prompt() {
    STAY_IN_MENU=true
    while "$STAY_IN_MENU"
    do
      read -r -p "Continue with the check? (y/N):";
      if [ "$REPLY" == "y" ]; then
      STAY_IN_MENU=false
      echo "Continuing...";
      print_section_spacer
      elif [ "$REPLY" == "N" ]; then
      echo "exiting script"
      print_section_spacer
      exit 1
      else
      echo "Please enter y or N"
      fi 
    done
}

function check_jq() {
    if command -v jq --version >/dev/null 2>&1 ; then
    echo "nodejs found"
    echo "version: $(jq --version)"
    else
        echo "jq not found"
        echo "Run the following command to install JQ"
        echo "curl -L -o /usr/bin/jq.exe https://github.com/stedolan/jq/releases/latest/download/jq-win64.exe"
    fi
    print_section_spacer
}

function check_homebrew() {
    if command -v brew --version >/dev/null 2>&1 ; then
    echo "homebrew found"
    echo "version: $(brew --version)"
    else
        echo "home brew not found"
        echo "Run the following command to install homebrew"
        echo "Documentation is located here: https://brew.sh/"
        echo "brew install wget"
    fi
    print_section_spacer
}

function print_section_spacer() {
  echo ""
  echo ""
}

function main() {
  instruction_message
  continue_prompt
  check_homebrew
  check_jq
}

main