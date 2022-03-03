#!/bin/make

all: void-installer

void-installer:
	@echo "make void-installer"
	@# xbps-install -S -y
	@# xbps-install -y git curl void-repo-nonfree
	@# curl -sL https://raw.githubusercontent.com/ayoubelmhamdi/mylinux/master/git.sh | bash -
	@# curl -sL https://raw.githubusercontent.com/ayoubelmhamdi/mylinux/master/lib.sh | bash -
	@# curl -sL https://raw.githubusercontent.com/ayoubelmhamdi/mylinux/master/nvim.sh | bash -
	@# git clone https://github.com/wbthomason/packer.nvim  ~/.local/share/nvim/site/pack/packer/start/packer.nvim  || echo "handl git packer" 
	@# git clone --recurse-submodules https://github.com/ayoubelmhamdi/config  ~/stow || echo "handl git ~/stow" 
	@# rm -rf ~/.config && cd ~/stow && stow alsa fonts isort kitty lua_format nvim-v2 zathura fish gimp210 jump latex sxhkd void-fish void-fish
	@# git clone --depth=1 https://github.com/ayoubelmhamdi/bin ~/bin || echo "handl git ~/bin" 
	@# mkdir -p /mega/cloud/blur /mega/repo/dotfiles  /opt/applist/npm.list
	@# echo "mega-login ayoub@ayoub.com 1234678"
	@# mega-login $(login) || echo "handl mega-already login"
	@# echo "symlik files"
	@# rm -f  /etc/fstab                                      && ln -s $HOME/stow/etc/fstab /etc/fstab
	@# rm -f  /etc/wpa_supplicant/wpa_supplicant-wlan0.conf	 && ln -s $HOME/stow/etc/wpa_supplicant/wpa_supplicant-wlan0.conf /etc/wpa_supplicant/wpa_supplicant-wlan0.conf	
	@# rm -f  /etc/sv/agetty-tty1/conf                        && ln -s $HOME/stow/etc/etc/sv/agetty-tty1/conf /etc/sv/agetty-tty1/conf
	@# rm -f  /root/.config/nvim/init.lua                    && ln -s $HOME/.config/nvim/lua/nvimrc.lua /root/.config/nvim/init.lua
	@# rm -rf /root/.config/nvim/after                       && ln -s $HOME/.config/nvim/lua/afterlink /root/.config/nvim/after
	@# rm -rf /opt/applist
	@# ln -s /mega/repo/dotfiles/applist /opt/applist

test:
	@echo "test"
