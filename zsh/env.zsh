# Environment variables and other things that installed programs like to have.

export PATH="./node_modules/.bin:$HOME/bin:/usr/local/bin:/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

export PATH="$PATH:$HOME/.npm-packages/bin:$HOME/go/bin:$HOME/anaconda3/bin"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

export GOPATH="$HOME/go"
export CDPATH="$HOME/dev:$GOPATH/src/github.com/reverbdotcom"

export PAGER="less"
# Use vim as default editor
export EDITOR=vim
# ...but still use emacs-style bindings
bindkey -e


if [[ $(uname) == "Darwin" ]] ; then
    export JAVA_HOME=/Library/Java/JavaVirtualMachines/current/Contents/Home
    ulimit -n 65535 200000
    export FIND=/usr/local/bin/gfind
fi

export ANDROID_HOME=$HOME/Library/Android/sdk


_git_short_alias() {
    CURRENT=$CURRENT+1
    words[1]=${service:1}   # remove leading 'g' character
    service=git
    words=($service $words)
    echo "words: ${words}"
    #echo "curcontext: ${curcontext}"
    #echo "state: ${state}"
    _git
}
compdef _git_short_alias -P 'v*'



if command -v rbenv &>/dev/null ; then
  PATH="$HOME/.rbenv/shims:${PATH}"
  export RBENV_SHELL=zsh
fi

if command -v nodeenv &>/dev/null ; then
  PATH="$HOME/.nodenv/shims:${PATH}"
  export NODENV_SHELL=zsh
fi
