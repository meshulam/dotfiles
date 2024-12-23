# System- and app-defined paths
if [ -x /usr/libexec/path_helper ]; then
	eval `/usr/libexec/path_helper -s`
fi

DOTFILES_PATH=~/dotfiles

######## Command history configuration ######################
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


####### Homebrew
export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";
[ -z "${MANPATH-}" ] || export MANPATH=":${MANPATH#:}";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";

######## env config
export PAGER="less"
# Use vim as default editor
export EDITOR=vim

export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

if command -v asdf &>/dev/null ; then
  . "$(brew --prefix asdf)/libexec/asdf.sh"
fi

## Git prompt
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT='${vcs_info_msg_0_}'
# PROMPT='${vcs_info_msg_0_}%# '
zstyle ':vcs_info:git:*' formats '%b'

source $DOTFILES_PATH/aliases.sh
source $DOTFILES_PATH/secrets.sh
