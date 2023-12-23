#!/usr/bin/env bash


RUBY_INTERPRETATOR_LOCATION=`which ruby`

if [[ "$RUBY_INTERPRETATOR_LOCATION" =~ ^[A-z0-9\/]+$ ]]; then
  echo '[+] Perfect. You have some Ruby installed...'
else 
  echo '[-] ERROR! Ruby interpretator is not installed'
  exit
fi

RUBY_VERSION=`ruby -v`

if [[ "$RUBY_VERSION" =~ ^'ruby '(\d){1}\.(\d){1}.(\d){1}(.*)$ ]]; then 
  echo -e "[+] Ruby version is $2.$3.$4"
else
  echo '[-] ERROR! Ruby version mismatch. Minimal Ruby version is 3.2.2'
  exit 
fi



