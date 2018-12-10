export AWS_REGION="us-east-1"
export AWS_DEFAULT_REGION="us-east-1"

alias fs='foreman start'

alias convoxp='convox login convox-production-2029365087.us-east-1.elb.amazonaws.com'
alias convoxs='convox login reverb-staging-1222177346.us-east-1.elb.amazonaws.com'
alias convoxsb='convox login convox-sandbox-628608395.us-east-1.elb.amazonaws.com'

# https://github.com/reverbdotcom/ops/blob/master/shell/aliases.sh

# ssh to any remote instance
# ressh prod.worker3
ressh () {
  rv c "ssh reverb@$1"
}
