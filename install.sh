#!/usr/bin/bash

sudo apt-add-repository -y ppa:fish-shell/release-3
sudo apt update
sudo apt install -y \
	npm \
	nodejs \
	fish \
	cmake \
	make \
	g++ \
	git \
	tar \
	unzip \
	ripgrep \
	python3-pip \
	fd-find \
 	xclip \
	golang

# git config
git config --global user.email "su3g4196ta8@gmail.com"
git config --global user.name "Gustavo"
git config --global core.editor "vim"
git config --global pull.rebase true

# nvim python module
python3 -m pip install --user --upgrade pynvim

# nvim-config
git clone https://github.com/jason54354321/nvim-config.git

mv nvim-config nvim
mkdir -p ~/.config/nvim
mv nvim/ ~/.config/

# nvim
curl -L -O https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
tar -vxzf nvim-linux64.tar.gz
rm nvim-linux64.tar.gz

sudo mkdir -p /opt
sudo mv nvim-linux64 nvim
sudo mv nvim/ /opt/
export PATH="$PATH:/opt/nvim/bin"

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# gtest
sudo apt-get -y install libgtest-dev
cd /usr/src/gtest
sudo cmake CMakeLists.txt
sudo make
cd lib
sudo cp *.a /usr/lib

# for docker permission
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
