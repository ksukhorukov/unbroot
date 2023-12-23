#!/usr/bin/env bash


RUBY_INTERPRETATOR_LOCATION=`which ruby`

if [[ $RUBY_INTERPRETATOR_LOCATION =~ ^[A-z0-9\/]+$ ]]; then
  echo '[+] Perfect. You have some Ruby installed...'
else 
  echo '[-] ERROR! Ruby interpretator is not installed'
  exit
fi

RUBY_VERSION=`ruby -v`

if [[ $RUBY_VERSION =~ ^(.*)(\d)\.(\d).(\d)(.*)$ ]]; then 
  echo "[+] Ruby version is $1.$2.$3"
else
  echo '[-] ERROR! Ruby version mismatch. Minimal Ruby version is 3.2.2'
  echo "[+] Ruby version is $1.$2.$3"
  exit 
fi



