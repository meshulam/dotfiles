export AWS_REGION="us-east-1"
export AWS_DEFAULT_REGION="us-east-1"

export CDPATH=".:$HOME/dev"

alias rl="docker-compose -f $HOME/dev/local/docker-compose.yml"

# https://github.com/reverbdotcom/ops/blob/master/shell/aliases.sh

alias tilt="/opt/homebrew/bin/tilt"

aws-ecr-login-infra() {
  saml2aws login --skip-prompt
  eval $(assume-role infra)
  aws ecr get-login-password --region us-east-1 | helm registry login --username AWS --password-stdin 117429374863.dkr.ecr.us-east-1.amazonaws.com
}

helm-du() {
  aws-ecr-login-infra
  helm dependency update
}

