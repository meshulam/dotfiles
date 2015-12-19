# Exports carried over from old .zshrc

# eval `/usr/libexec/path_helper -s`
export PATH=$HOME/bin:/usr/local/bin:$PATH
export JAVA_HOME=/Library/Java/JavaVirtualMachines/current/Contents/Home
export MAVEN_OPTS="-Xmx2048m"

export DOCKER_HOST=tcp://127.0.0.1:4243

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# added by travis gem
[ -f /Users/matt/.travis/travis.sh ] && source /Users/matt/.travis/travis.sh

export COOKBOOK_DIR=$HOME/code/pipelines-inf/cookbooks
