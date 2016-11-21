# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Colored command prompt
PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# If we have a .bash_aliases file then go ahead and use it
if [ -f ~/.bash_aliases ]; then
    source ~/.bash_aliases
fi

# If we have a .bash_paths file then go ahead and use it
if [ -f ~/.bash_paths ]; then
    source ~/.bash_paths
fi
