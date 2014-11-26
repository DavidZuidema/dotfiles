#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

# dotfiles directory
dir=~/dotfiles

# list of files/folders to symlink in homedir
files=".bashrc .bash_profile .bash_aliases .bash_prompt .bash_exports .vimrc .tmux.conf .git-completion.bash"

# change to the dotfiles directory
cd $dir

# create symlinks 
for file in $files; do
	echo "$file"
	rm -f ~/$file
	ln -s $dir/$file ~/$file
done
source ~/.bash_profile

