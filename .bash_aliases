#
# dz .bash_aliases
#

# Easier navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# List files
alias l="ls -l"
alias la="ls -la"
alias ll='ls -al';

alias hg='history | grep';

# git aliases
alias gs='git status';
alias gb='git branch';
alias gd='git diff';

# vimrc editing
alias vrc='vim ~/.vimrc'

# bash_alias editing
alias br='vim ~/.bashrc'
alias ba='vim ~/.bash_aliases'
alias be='vim ~/.bash_exports'

# Some how I always end up blowing away my public key by accident
alias extractpub="ssh-keygen -f id_rsa -y > id_rsa.pub"

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec $SHELL -l"

# Renew DHCP lease
alias renew='echo "add State:/Network/Interface/en0/RefreshConfiguration temporary" | sudo scutil'

