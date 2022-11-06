export AWS_REGION="us-east-1"
export AWS_DEFAULT_REGION="us-east-1"

export CDPATH=".:$HOME/dev"

alias fs='foreman start'

alias rl="docker-compose -f $HOME/dev/local/docker-compose.yml"

# https://github.com/reverbdotcom/ops/blob/master/shell/aliases.sh

# ssh to any remote instance
# ressh prod.worker3
ressh () {
  rv c "ssh reverb@$1"
}

alias tilt="/opt/homebrew/bin/tilt"
