#!/bin/bash

test -f $HOME/.ssh/id_ed25519 && \
  rm -f $HOME/.ssh/id_ed25519 >/dev/null 2>&1

test -f $HOME/.ssh/id_ed25519.pub && \
  rm -f $HOME/.ssh/id_ed25519.pub >/dev/null 2>&1


cat \
    /dev/zero | \
    ssh-keygen \
   -t ed25519 \
   -C "ayoubelmhamdi@gmail.com" \
   -q \
   -N ""

#++++++++++++++++++++++++++++++++++++++++

echo -e "\n\n\t" 										\
     "ssh-key :\n\t" 								\

cat  $HOME/.ssh/id_ed25519.pub 			\
  >> $HOME/github.txt					      \

echo -e "\n\n\t" 										              \
     "add this line to :\n\n" 					         	\
     "https://github.com/settings/ssh/new \n\n\t"	\
     "for git private me@scripts frome github\n"	\
	   "git clone" 									                \
     "git@github.com:ayoubelmhamdi/scripts.git\n"	\
	>> $HOME/github.txt


cat  $HOME/github.txt

#++++++++++++++++++++++++++++++++++++++++

git config --global user.name "Ayoub EL Mhamdi"
git config --global user.email "ayoub.elmhamdi@gmail.com"
git config --global core.editor "nvim"
