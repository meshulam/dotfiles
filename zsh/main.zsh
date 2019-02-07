# System- and app-defined paths
if [ -x /usr/libexec/path_helper ]; then
	eval `/usr/libexec/path_helper -s`
fi

zsh_path=`dirname $0`
fpath=( $zsh_path/functions $fpath )

autoload -U promptinit && promptinit
prompt pure

autoload -U compinit && compinit

setopt autocd
setopt extendedglob
setopt NO_NOMATCH

export CLICOLOR=1

# source $zsh_path/keys.zsh
source $zsh_path/history.zsh
source $zsh_path/env.zsh
source $zsh_path/completion.zsh
source $zsh_path/aliases.zsh
source $zsh_path/nnn.zsh
source $zsh_path/reverb.zsh
source $zsh_path/secrets.zsh
# source $zsh_path/correction.zsh
# source $zsh_path/stack.zsh

# Don't capture Ctrl-S, so we can use it in vim, etc
stty -ixon
