alias ll="ls -la"

export PS1="\\W$ "
export EDTIROR="subl -w"
export PATH=$HOME/bin:$PATH

export HISTSIZE=5000
export HISTFILESIZE=10000
# Flush command history to disk each time prompt is displayed
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
# Append to history file instead of overwriting
shopt -s histappend
# Turn off suspend/resume (ctrl-s, ctrl-q)
stty -ixon
