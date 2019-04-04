# System- and app-defined paths
if [ -x /usr/libexec/path_helper ]; then
	eval `/usr/libexec/path_helper -s`
fi

source $zsh_path/history.zsh
source $zsh_path/env.zsh
source $zsh_path/completion.zsh
source $zsh_path/aliases.sh
source $zsh_path/nnn.zsh
source $zsh_path/reverb.sh
source $zsh_path/secrets.sh

# Don't capture Ctrl-S, so we can use it in vim, etc
stty -ixon
