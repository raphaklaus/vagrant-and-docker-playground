#!/bin/bash

# fix 'stdin: is not a tty' issue
sed -i 's/^mesg n$/tty -s \&\& mesg n/g' /root/.profile

apt-get update

apt-get install git-core -qq

apt-get install zsh -qq

wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

sudo chsh -s `which zsh`

sudo apt-get install postgresql-client-9.3 -qq

exit 0