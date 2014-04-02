#!/bin/bash

export PATH="$HOME/bin:$PATH"
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/pgsql-9.3/bin:$PATH"
# export PATH="$HOME/Projects/depot_tools:$PATH"
# export PATH="/Library/PostgreSQL/9.3/bin:$PATH"
# export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
# export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
export EDITOR='subl -w'
export PGHOST=localhost
export NODE_ENV='development'
export HISTCONTROL=ignoredups
export HISTSIZE=10000
OSNAME=`uname`

if [ "$OSNAME" = "win32" ] ; then
  export NODE_PATH="~\AppData\Roaming\npm\node_modules"
fi
# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && source "$file"
done
unset file

source ~/dotfiles/ls
source ~/dotfiles/node
source ~/dotfiles/git
source ~/dotfiles/svn
source ~/dotfiles/pg
source ~/dotfiles/utils
source ~/dotfiles/npm_completion.sh

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob
# Append to the Bash history file, rather than overwriting it
shopt -s histappend
# Autocorrect typos in path names when using `cd`
shopt -s cdspell

### Added by the Heroku Toolbelt
# export PATH="/usr/local/heroku/bin:$PATH"

bind '"\e[1;5C": forward-word'
bind '"\e[1;5D": backward-word'
bind '"\e[5C": forward-word'
bind '"\e[5D": backward-word'
bind '"\e\e[C": forward-word'
bind '"\e\e[D": backward-word'

function gi() { curl http://gitignore.io/api/$@ ;}
