#!/bin/zsh

path+=~/bin

# automatically change directory when entering bare dir name
setopt AUTO_CD
# show glob completions instead of automatically inserting them
setopt GLOB_COMPLETE
# add a bit more data (timestamp in unix epoch time and elapsed time of the command)
setopt EXTENDED_HISTORY
# share history across multiple zsh sessions
setopt SHARE_HISTORY
# append to history
setopt APPEND_HISTORY
# adds commands as they are typed, not at shell exit
setopt INC_APPEND_HISTORY
# do not store duplicates
setopt HIST_IGNORE_DUPS
#ignore duplicates when searching
setopt HIST_FIND_NO_DUPS
# removes blank lines from history
setopt HIST_REDUCE_BLANKS
# prompt after history substitution (e.g., !!) before running
setopt HIST_VERIFY
# spelling correction (see also CORRECT)
setopt CORRECT_ALL

# save command history and limit size
HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
SAVEHIST=2000
HISTSIZE=2000


# Convenient aliases
alias ll='ls -la'
alias isodate='date "+%FT%T%z"'
alias utcdate='TZ=UTC date "+%FT%T%z"'
alias synctime='sudo ntpdate -vu time.apple.com'


# TODO: get completions working
# autoload -Uz compinit && compinit
# -> compinit:498: no such file or directory: /usr/local/share/zsh/site-functions/_brew_cask

# Nice colored prompt, with last command's exit status
PROMPT='%(?.%F{green}√.%F{red}?%?)%f %B%F{yellow}%1~%f%b %# '
# Sublime Text as default CLI editor
export EDTIROR="subl -w"
# Colored `ls` output on MacOS X and BSD, but not Linux
export CLICOLOR=1


# Allow for local machine-specific customizations
if [[ -f "${HOME}/.local_profile" ]]
then
    source "${HOME}/.local_profile"
fi
