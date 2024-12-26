# Environment variables and other things that installed programs like to have.

### begin homebrew
export HOMEBREW_PREFIX="/opt/homebrew";
export HOMEBREW_CELLAR="/opt/homebrew/Cellar";
export HOMEBREW_REPOSITORY="/opt/homebrew";
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin${PATH+:$PATH}";
export MANPATH="/opt/homebrew/share/man${MANPATH+:$MANPATH}:";
export INFOPATH="/opt/homebrew/share/info:${INFOPATH:-}";
### end homebrew

# Clang errors when building ruby
export CFLAGS="-Wno-error=implicit-function-declaration"

export PATH="$PATH:$HOME/.npm-packages/bin:$HOME/go/bin:$HOME/anaconda3/bin:$HOME/.cargo/bin"

export GOPATH="$HOME/go"

export PAGER="less"
# Use vim as default editor
export EDITOR=vim
# ...but still use emacs-style bindings (zsh)
# bindkey -e


if [[ $(uname) == "Darwin" ]] ; then
    # export JAVA_HOME=/Library/Java/JavaVirtualMachines/current/Contents/Home
    export JAVA_HOME=/Applications/Android\ Studio.app/Contents/jre/jdk/Contents/Home
    # ulimit -n 65535 200000
    export FIND=/usr/local/bin/gfind
fi

export ANDROID_HOME=$HOME/Library/Android/sdk


if command -v rbenv &>/dev/null ; then
  PATH="$HOME/.rbenv/shims:${PATH}"
fi

if command -v nodenv &>/dev/null ; then
  PATH="$HOME/.nodenv/shims:${PATH}"
fi

if command -v pyenv &>/dev/null ; then
  eval "$(pyenv init -)"
fi

# Bash prompt colors
# Black: 30
# Blue: 34
# Cyan: 36
# Green: 32
# Purple: 35
# Red: 31
# White: 37
# Yellow: 33
# reset: 00
#  \[\033[CCm\] e.g. \[\033[35m\] for purple

GIT_PS1_SHOWDIRTYSTATE=y
GIT_PS1_SHOWCOLORHINTS=y
GIT_PS1_SHOWUNTRACKEDFILES=y
PROMPT_COMMAND='__git_ps1 "\[\033[36m\]\u@\h\[\033[37m\]:\[\033[00m\]\w" "\n\[\033[36m\]❯ \[\033[00m\]" " on \[\033[37m\]git\[\033[00m\]:%s"'

## Command history
# Append and reload new command history at every prompt
#PROMPT_COMMAND="history -a ; history -n ; $PROMPT_COMMAND"
HISTSIZE=10000
HISTFILESIZE=10000
HISTTIMEFORMAT="%Y-%m-%d %T "
