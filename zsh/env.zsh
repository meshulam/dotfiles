# Environment variables and other things that installed programs like to have.

export PATH="$HOME/bin:/usr/local/bin:$PATH:$HOME/.npm-packages/bin:$HOME/go/bin:$HOME/anaconda3/bin:./node_modules/.bin"
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

export GOPATH="$HOME/go"

export CDPATH="$HOME/dev:$GOPATH"

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

# eval "$(nodenv init -)"
export PATH="$PATH:$HOME/.nodenv/shims"
