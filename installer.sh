#!/usr/bin/env bash

PURPLE='\033[0;35m' 
RED='\033[0;31m' 
BLUE='\033[0;34m' 


MAJOR_VERSION_PART_REQUIRED=3

out() {
  echo -e "$PURPLE $1"
}

info() {
  echo -e "$BLUE $1"
}

error() {
  echo -e "$RED $1"
  exit
}

RUBY_INTERPRETATOR_LOCATION=`which ruby`

if [[ "$RUBY_INTERPRETATOR_LOCATION" =~ ^[A-z0-9\/]+$ ]]; then
  out '[+] Perfect. You have some Ruby installed...'
else 
  error '[-] ERROR! Ruby interpretator is not installed'
  exit
fi

RUBY_VERSION=`ruby -v | awk '{print $2}'`

MAJOR_VERSION_PART=`echo -e "$RUBY_VERSION" | cut -d. -f1`

if [ $MAJOR_VERSION_PART -ge $MAJOR_VERSION_PART_REQUIRED ]; then 
  out "[+] Script can be installed. Your Ruby version is $RUBY_VERSION"
else 
  error "[-] ERROR! Ruby version mismatch. Minimal Ruby version $MAJOR_VERSION_PART_REQUIRED"
  exit
fi 

BUNDLER_LOCATION=`which bundler`

if [ -z $BUNDLER_LOCATION ]; then
  info '[~] Installing bundler...'
  gem install bundler
else 
  out '[+] Bundler already installed'
fi
  
out '[+] Installing gems...'

bundle install





