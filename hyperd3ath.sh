#!/bin/sh

echo 'Welcome to hyperd3ath v1-alpha.'
read -p "Do you want to proceed? (yes/no) " yn

case $yn in 
	yes ) ok, proceeding...
	no ) echo exiting...;
		exit;;
	* ) echo invalid response;
		exit 1;;
esac


dsenableroot 
echo 'root user hopefully enabled and on login screen.'
echo 'installing brew.'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)";;

read -p "Do you want to disable SIP? (yes/no) " yn

case $yn in 
	yes ) echo 'ok, proceeding...';;
	no ) echo exiting...;
		exit;;
	* ) echo 'invalid response';
		exit 1;;
esac

echo 'a restart is needed. when your computer shuts down fully, press CMD + R until you boot into recovery mode. from there, in the terminal, run "csrutil disable" without the quotation marks.'
read -p "type yes to reboot when ready." yn

case $yn in 
	yes ) echo 'ok, proceeding...';;
	* ) echo 'invalid response';
		exit 1;;
esac

echo 'enter password ofc'
sudo shutdown -r now





