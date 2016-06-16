#!/bin/bash

# fix 'stdin: is not a tty' issue
sed -i 's/^mesg n$/tty -s \&\& mesg n/g' /root/.profile

apt-get update && apt-get install -y \
	apt-utils \
	automake \
	zsh \
	bash-completion \
	binutils-mingw-w64 \
	build-essential \
	clang \
	curl \
	dpkg-sig \
	gcc-mingw-w64 \
	git-core \
	git \
	libcap-dev \
	libltdl-dev \
	libtool \
	libssl-dev \
	net-tools \
	pkg-config \
	python-dev \
	python-mock \
	python-pip \
	python-websocket \
	tar \
	postgresql-client-9.3 \
	zip

su - vagrant -c "wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh"

chsh -s `which zsh` vagrant

su - vagrant -c "wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.31.1/install.sh | zsh"

exit 0
