#!/usr/bin/env bash


RUBY_INTERPRETATOR_LOCATION=`which ruby`

if [[ $RUBY_INTERPRETATOR_LOCATION =~ ^[A-z0-9\/]+$ ]]; then
  echo '[+] Perfect. You have some Ruby installed...'
else 
  echo '[-] ERROR! Ruby interpretator is not installed'
  exit
fi



