#!/bin/make

all: void-installer

void-installer:
	# xbps-install -S -y
	# xbps-install -y git curl void-repo-nonfree
	# curl -sL https://raw.githubusercontent.com/ayoubelmhamdi/mylinux/master/git.sh | bash -
	# curl -sL https://raw.githubusercontent.com/ayoubelmhamdi/mylinux/master/lib.sh | bash -
	# curl -sL https://raw.githubusercontent.com/ayoubelmhamdi/mylinux/master/nvim.sh | bash -
	# git clone https://github.com/wbthomason/packer.nvim  ~/.local/share/nvim/site/pack/packer/start/packer.nvim
	# rm -rf ~/.config
	# git clone --recurse-submodules https://github.com/ayoubelmhamdi/config  ~/stow
	# cd ~/stow stow alsa fonts isort kitty lua_format nvim-v2 stow.sh zathura fish gimp210 jump latex sxhkd void-fish void-fish
	# git clone --depth=1 https://github.com/ayoubelmhamdi/bin ~/bin
	

void:
	@echo "in void"
	@ln -s $HOME/.config/nvim/lua/nvimrc.lua /root/.config/nvim/init.lua
	@ln -s $HOME/.config/nvim/lua/afterlink /root/.config/nvim/after


