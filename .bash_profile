alias ll="ls -la"

export PS1="\\W$ "
export EDTIROR="subl -w"
export PATH=$HOME/bin:$PATH

# Colored `ls` output on MacOS X and BSD, but not Linux
export CLICOLOR=1

export HISTSIZE=5000
export HISTFILESIZE=10000
# Ignore duplicate commands and those starting with spaces; clear dups from history
export HISTCONTROL=ignoreboth:erasedups
# Flush command history to disk each time prompt is displayed
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
# Append to history file instead of overwriting
shopt -s histappend
# Turn off suspend/resume (ctrl-s, ctrl-q) so that ctrl-s can be used to search forward in command history
stty -ixon
