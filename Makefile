#!/bin/make
.ONESHELL: # Applies to every targets in the file!

all: void-installer

void-installer:
	@ echo "make void-installer"
	@ xbps-install -S -y
	@ xbps-install -y git curl void-repo-nonfree
	@ curl -sfL https://raw.githubusercontent.com/ayoubelmhamdi/mylinux/master/git.sh  | bash
	@ curl -sfL https://raw.githubusercontent.com/ayoubelmhamdi/mylinux/master/lib.sh  | bash
	@ curl -sfL https://raw.githubusercontent.com/ayoubelmhamdi/mylinux/master/nvim.sh | bash
	@ git clone https://github.com/wbthomason/packer.nvim  ~/.local/share/nvim/site/pack/packer/start/packer.nvim  || echo "handl git packer" 
	@ git clone --recurse-submodules https://github.com/ayoubelmhamdi/config  ~/stow
	@ rm -rf ~/.config 
	@ cd ~/stow && stow alsa fonts isort kitty lua_format nvim-v2 zathura fish gimp210 jump latex sxhkd void-fish void-fish
	@ git clone --depth=1 https://github.com/ayoubelmhamdi/bin ~/bin
	@ mkdir -p /mega/cloud/blur /mega/repo/dotfiles  /opt/applist/npm.list
	@ echo "mega-login ayoub@ayoub.com 1234678"
	@ mega-login $(login)
	@ mkdir -p /mega/repo
	@ mkdir -p /mega/cloud
	@ mega-sync /mega/repo repo
	@ mega-sync /mega/cloud cloud
	@ echo "symlik files"
	@ cp $$HOME/stow/etc/fstab /etc/fstab2
	@#rm -rf /etc/wpa_supplicant/wpa_supplicant-wlan0.conf	 && ln -s $$HOME/stow/etc/wpa_supplicant/wpa_supplicant-wlan0.conf /etc/wpa_supplicant/wpa_supplicant-wlan0.conf
	@ rm -rf /mega/cloud/blur/bg.ff                          && ln -s /mega/cloud/blur/10.ff /mega/cloud/blur/bg.ff                          
	@ rm -rf /etc/sv/agetty-tty1/conf                        && cp    $$HOME/stow//etc/sv/agetty-tty1/conf /etc/sv/agetty-tty1/conf
	@ rm -rf /root/.config/nvim/init.lua                     && ln -s $$HOME/.config/nvim/lua/nvimrc.lua /root/.config/nvim/init.lua
	@ rm -rf /root/.config/nvim/after                        && ln -s $$HOME/.config/nvim/lua/afterlink /root/.config/nvim/after
	@ rm -rf /opt/applist
	@ ln -s  /mega/repo/dotfiles/applist /opt/applist
	@ echo "fin void-installer:"

test:
	@echo "test"
	@# mkswap affect fstab
	@# ln -s $$HOME/scripts/latex/latexpkg /sbin/
	@# ln -s $$HOME/scripts/latex/tlmgr /sbin/
	@# grub-install --target=i386-efi --efi-directory=/boot/efi --bootloader-id=gentoo
	@# xbps-install linux

new:
	@echo "test"
