## Command history configuration
if [ -z $HISTFILE ]; then
    HISTFILE=$HOME/.zsh_history
fi
HISTSIZE=10000
SAVEHIST=10000

setopt append_history
setopt extended_history
setopt hist_ignore_all_dups     # ignore duplication command history list
setopt hist_ignore_space
setopt hist_verify
setopt share_history            # share command history data
