# Environment variables and other things that installed programs like to have.

# All path stuff here plz kthx
export PATH="$HOME/bin:/usr/local/bin:$PATH:$HOME/.rvm/bin"

export EDITOR=vim

if [[ $(uname) == "Darwin" ]] ; then
	export JAVA_HOME=/Library/Java/JavaVirtualMachines/current/Contents/Home
fi

export MAVEN_OPTS="-Xmx2048m"

# Python Virtualenv stuff
export WORKON_HOME="${HOME}/venv"
VENV_WRAPPER="/usr/local/bin/virtualenvwrapper.sh"
[ -e $VENV_WRAPPER ] && source $VENV_WRAPPER

# Tempo Chef
export COOKBOOK_DIR="/Users/matt/code/tempo/infrastructure/cookbooks"

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
