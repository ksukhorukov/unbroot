#!/usr/bin/env bash

MAJOR_VERSION_PART_REQUIRED=3

RUBY_INTERPRETATOR_LOCATION=`which ruby`

if [[ "$RUBY_INTERPRETATOR_LOCATION" =~ ^[A-z0-9\/]+$ ]]; then
  echo '[+] Perfect. You have some Ruby installed...'
else 
  echo '[-] ERROR! Ruby interpretator is not installed'
  exit
fi

RUBY_VERSION=`ruby -v | awk '{print $2}'`

MAJOR_VERSION_PART=`echo -e "$RUBY_VERSION" | cut -d. -f1`

if [ $MAJOR_VERSION_PART -ge $MAJOR_VERSION_PART_REQUIRED ]; then 
  echo -e "[+] Script can be installed. Your Ruby version is $RUBY_VERSION"
else 
  echo -e "$MAJOR_VERSION_PART"
  echo "[-] ERROR! Ruby version mismatch. Minimal Ruby version $MAJOR_VERSION_PART_REQUIRED"
  exit
fi 


  



