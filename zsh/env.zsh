# Environment variables and other things that installed programs like to have.

# All path stuff here plz kthx
export PATH="$HOME/bin:/usr/local/bin:$PATH:$HOME/.rvm/bin"

if [[ $(uname) == "Darwin" ]] ; then
	export JAVA_HOME=/Library/Java/JavaVirtualMachines/current/Contents/Home
fi

export MAVEN_OPTS="-Xmx2048m"

export DOCKER_HOST=tcp://127.0.0.1:4243

export PATH="$PATH:" # Add RVM to PATH for scripting

# added by travis gem
[ -f /Users/matt/.travis/travis.sh ] && source /Users/matt/.travis/travis.sh

export COOKBOOK_DIR=$HOME/code/pipelines-inf/cookbooks
