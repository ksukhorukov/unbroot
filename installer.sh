#!/usr/bin/env bash

PURPLE='\033[0;35m' 
RED='\033[0;31m' 
BLUE='\033[0;34m' 

PROFILE_FILE='UNDEFINED'

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

make_shell_profile() {
  echo 'call'
  echo -e $1
  export PROFILE_FILE="$HOME/.$1"
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

# BUNDLER_LOCATION=`which bundler`

# if [ -z $BUNDLER_LOCATION ]; then
#   info '[~] Installing bundler...'
#   gem install bundler
# else 
#   out '[+] Bundler already installed'
# fi
  
# out '[+] Installing gems...'

# bundle install

CURRENT_DIRECTORY=`pwd`
CURRENY_SHELL=`echo -e $SHELL`

BASH_PROFILE_FILE='bashrc' 
MAC_PROFILE_FILE='zshrc'
FREEBSD_PROFILE_FILE='tcshrc' 
OPENBSD_PROFILE_FILE='kshrc'

echo '#####'

if [ -f "$HOME/.$BASH_PROFILE_FILE" ]; then
  make_shell_profile 'bash'
fi

if [ -f "$HOME/.$MAC_PROFILE_FILE" ]; then
  make_shell_profile 'macos'
fi

if [ -f "$HOME/.$FREEBSD_PROFILE_FILE" ]; then 
  make_shell_profile 'freebsd'
fi

if [ -f "$HOME/.$OPENBSD_PROFILE_FILE" ]; then 
  make_shell_profile 'openbsd'
fi

echo -e "PATH=\"$PATH:$HOME/$CURRENT_DIRECTORY/unbroot\"" 













