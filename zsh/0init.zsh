# This is how completions get loaded (among other things)
fpath=($ZSH/completions $fpath)

# Autocomplete stuff
autoload -Uz compinit && compinit

# Aliases and functions for terminal colors
autoload -Uz colors && colors

# Use caching so that commands like apt and dpkg complete are useable
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path $ZSH/cache/

