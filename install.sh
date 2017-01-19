#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

# dotfiles directory
dir=~/dotfiles

# list of files/folders to symlink in homedir
files=".bashrc .bash_profile .bash_aliases .bash_prompt .bash_exports .vimrc .tmux.conf .git-completion.bash .vim .emacs.d"

# change to the dotfiles directory
cd $dir

# create symlinks 
for file in $files; do
	echo "$file"
	rm -rf ~/$file
	ln -s $dir/$file ~/$file
done

# optional project specific settings
if [ ! -z "$1" ]
    then
        echo "projects/$1"
        rm -rf ~/.bash_project
        ln -s $dir/projects/.${1} ~/.bash_project
fi

source ~/.bash_profile
