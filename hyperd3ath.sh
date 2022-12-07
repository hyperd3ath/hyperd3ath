#!/bin/bash
echo 'Welcome to hyperd3ath v1.2-alpha.'

dsenableroot 
echo 'root user hopefully enabled and on login screen.'
echo 'installing brew. may fail on 10.13, git issues lol'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
 
echo 'a restart is needed. when your computer shuts down fully, press CMD + R until you boot into recovery mode. from there, in the terminal, run "csrutil disable" without the quotation marks.'

 read -s -n 1 -p "Press any key to continue . . ."
sudo shutdown -r now

