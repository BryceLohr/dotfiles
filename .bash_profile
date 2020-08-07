alias ll="ls -la"

export PS1="\[\033[33m\]\\W\$\[\033[0m\] "
export EDTIROR="subl -w"
export PATH=$HOME/bin:$PATH

# Colored `ls` output on MacOS X and BSD, but not Linux
export CLICOLOR=1

export HISTSIZE=5000
export HISTFILESIZE=10000
# Ignore duplicate commands and those starting with spaces; clear dups from history
export HISTCONTROL=ignoreboth:erasedups
# Flush command history to disk each time prompt is displayed
# export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
# Append to history file instead of overwriting
shopt -s histappend
# Turn off suspend/resume (ctrl-s, ctrl-q) so that ctrl-s can be used to search forward in command history
stty -ixon

# Convenient aliases
alias synctime='sudo ntpdate -vu time.apple.com'
alias isodate='date "+%FT%T%z"'

# Enable git completions if available. (Expects the Homebrew-installed location.)
if [[ -f /usr/local/etc/bash_completion.d/git-completion.bash ]]
then
    source /usr/local/etc/bash_completion.d/git-completion.bash
fi

# Enable iTerm2 shell integration if available
if [[ -f "${HOME}/.iterm2_shell_integration.bash" ]]
then
    source "${HOME}/.iterm2_shell_integration.bash"
fi

# Allow for local machine-specific customizations
if [[ -f "${HOME}/.local_profile" ]]
then
    source "${HOME}/.local_profile"
fi
