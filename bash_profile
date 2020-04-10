# Setup aliases
alias gs='git status'

# Change vim alias to point to brew version
alias vim='/usr/local/Cellar/vim/8.2.0500_1/bin/vim'

# Use brew python
export PATH="$HOME/usr/local/bin:$PATH"

# Powerline setup
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/local/lib/python3.7/site-packages/powerline/bindings/bash/powerline.sh

# Color scene for files/directories
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Setup fzf
# This can also be done by going into fzf dir and running ./install
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

