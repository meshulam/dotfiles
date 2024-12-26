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

export AWS_DEFAULT_PROFILE=preprod

ap() {
  if [ -z "${1}" ]; 
  then
    aws sts get-caller-identity
  else
    export AWS_PROFILE=$1
    echo "set AWS_PROFILE=$1"
  fi
}

_ap()
{
  COMPREPLY=($(compgen -W "$(aws configure list-profiles)" "${COMP_WORDS[1]}"))
}

complete -F _ap ap
