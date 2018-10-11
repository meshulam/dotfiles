# Environment variables and other things that installed programs like to have.

# All path stuff here plz kthx
export PATH="$HOME/bin:/usr/local/bin:$PATH:$HOME/.rvm/bin:$HOME/.npm-packages/bin:$HOME/go/bin:$HOME/anaconda3/bin:./node_modules/.bin"

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

# Python Virtualenv stuff
export WORKON_HOME="${HOME}/venv"
VENV_WRAPPER="/usr/local/bin/virtualenvwrapper.sh"
[ -e $VENV_WRAPPER ] && source $VENV_WRAPPER

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

eval "$(nodenv init -)"

