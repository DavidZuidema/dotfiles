#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

# dotfiles directory
dir=~/dotfiles

# list of files/folders to symlink in homedir
files=".bashrc .bash_profile .vimrc .tmux.conf"

# change to the dotfiles directory
cd $dir

# create symlinks 
for file in $files; do
	echo "$file"
	rm ~/$file
	ln -s $dir/$file ~/$file
done
