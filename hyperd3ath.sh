#!/bin/sh

echo 'Welcome to hyperd3ath v1.1-alpha.'
read -p "Are you sure? " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then

dsenableroot 
echo 'root user hopefully enabled and on login screen.'
echo 'installing brew. may fail on 10.13, git issues lol'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

else
fi


read -p "Would you like to disable SIP? (y/n) " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
 
echo 'a restart is needed. when your computer shuts down fully, press CMD + R until you boot into recovery mode. from there, in the terminal, run "csrutil disable" without the quotation marks.'

else
fi

read -p "type Y when ready to reboot " -n 1 -r
echo    # (optional) move to a new line
if [[ ! $REPLY =~ ^[Yy]$ ]]
then

echo 'enter password ofc'
sudo shutdown -r now

else
fi




