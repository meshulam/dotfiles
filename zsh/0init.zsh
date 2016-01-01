# System- and app-defined paths
if [ -x /usr/libexec/path_helper ]; then
	eval `/usr/libexec/path_helper -s`
fi

# This is how completions get loaded (among other things)
fpath=($ZSH/completions $fpath)

# Autocomplete stuff
autoload -Uz compinit && compinit

# Aliases and functions for terminal colors
autoload -Uz colors && colors

# Case-insensitive tab completion. And complete in middle of words too
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

# Use caching so that commands like apt and dpkg complete are useable
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path $ZSH/cache/

setopt no_list_beep     # Don't beep on ambiguous completion
setopt correct          # Correct command spelling

# Share history between sessions
setopt share_history
