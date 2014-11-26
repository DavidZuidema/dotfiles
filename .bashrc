#
# dz .bashrc
#

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{bash_prompt,bash_exports,bash_aliases}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;




# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
	colorflag="--color"
else # OS X `ls`
	colorflag="-G"
fi

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2- | tr ' ' '\n')" scp sftp ssh;

if [ -f $(brew --prefix)/etc/bash_completion ]; then
. $(brew --prefix)/etc/bash_completion
fi

if [ -f ~/.git-completion.bash ]; then
	. ~/.git-completion.bash
fi

# pip should only run if there is a virtualenv currently activated
#export PIP_REQUIRE_VIRTUALENV=true
# cache pip-installed packages to avoid re-downloading
#export PIP_DOWNLOAD_CACHE=$HOME/.pip/cache

#pipg(){
#   PIP_REQUIRE_VIRTUALENV="" pip "$@"
#}

#export WORKON_HOME=$HOME/.virtualenvs
#export PROJECT_HOME=$HOME/python
#export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
#source /usr/local/bin/virtualenvwrapper.sh



