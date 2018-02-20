export AWS_REGION="us-east-1"
export AWS_DEFAULT_REGION="us-east-1"

alias z=zeus
alias zs=zeus start
alias zr=zeus rspec

alias fs=foreman start

alias convoxp='convox login convox-production-2029365087.us-east-1.elb.amazonaws.com'
alias convoxs='convox login reverb-staging-1222177346.us-east-1.elb.amazonaws.com'
alias convoxsb='convox login convox-sandbox-628608395.us-east-1.elb.amazonaws.com'

hash -d r="/Users/matt/dev"

# https://github.com/reverbdotcom/ops/blob/master/shell/aliases.sh

# ssh to any remote instance
# ressh prod.worker3
ressh () {
  rv c "ssh reverb@$1"
}

# scp from remote server to local
# rescp prod.worker3 remote_file.csv .
rescp () {
  rv c "scp reverb@$1:$2 $3"
}

# upload local file to remote path
# reup prod.worker3 main.rb /tmp
reup() {
  rv c "scp $2 reverb@$1:$3"
}

# get ip of node
# reip prod.worker3
reip() {
  rv i $1
}
