#!/bin/bash
#
# Set up dotfiles to home directory
#

set -e  # Exit on error
set -u  # Error on read of unassigned variable

cp .bash_profile $HOME/.bash_profile

mkdir -p $HOME/bin

# Symlink Sublime Text CLI launcher, if available
if [ -f "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ]
then
    ln -s -f "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" $HOME/bin/subl
fi
