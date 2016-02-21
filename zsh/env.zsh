# Environment variables and other things that installed programs like to have.

# All path stuff here plz kthx
export PATH="$HOME/bin:/usr/local/bin:$PATH:$HOME/.rvm/bin"

if [[ $(uname) == "Darwin" ]] ; then
	export JAVA_HOME=/Library/Java/JavaVirtualMachines/current/Contents/Home
fi

export MAVEN_OPTS="-Xmx2048m"

export DOCKER_HOST=tcp://127.0.0.1:4243

# Python Virtualenv stuff
export WORKON_HOME="${HOME}/venv"
VENV_WRAPPER="/usr/local/bin/virtualenvwrapper.sh"
[ -e $VENV_WRAPPER ] && source $VENV_WRAPPER


