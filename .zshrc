# Grab all aliases
source ~/.bash_aliases

# Grab all paths
source ~/.bash_paths


##### oh-my-zsh setup #####

# Path to your oh-my-zsh installation.
export ZSH=/Users/GodlyPerfection/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerlevel9k/powerlevel9k"

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(history dir status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(time vcs)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=$'%F{024}'$'\u256D'$'\uE0B2'$'%F{reset_color}'
POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX=$'%F{024}'$'\u2570'$'\u2192 '$'%F{reset_color}'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=15
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_from_right"
# enable the vcs segment in general
POWERLEVEL9K_SHOW_CHANGESET=true
# just show the 6 first characters of changeset
POWERLEVEL9K_CHANGESET_HASH_LENGTH=6
POWERLEVEL9K_HISTORY_BACKGROUND="024"
POWERLEVEL9K_DIR_BACKGROUND="cyan"
POWERLEVEL9K_ALTDIR_FOREGROUND="black"
POWERLEVEL9K_ALTDIR_BACKGROUND="cyan"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git emoji emoji-clock)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
