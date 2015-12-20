###  Cool addons  ###
source "$ZSH/addons/alias-tips/alias-tips.plugin.zsh"
export ZSH_PLUGINS_ALIAS_TIPS_TEXT="** Alias tip: "

###  #neveragain  ###
alias vi=vim

###  cd aliases  ###
alias ..='cd ..'
alias cd..='cd ..'
alias cd...='cd ../..'
alias cd....='cd ../../..'
alias cd.....='cd ../../../..'
alias cd/='cd /'

###  OSX-specific aliases  ###
alias brews='brew list -1'

###  Git aliases  ###
alias g='git'
alias gaa='git add --all'
alias gcm='git commit -a -m'
alias gco='git checkout'
alias gd='git diff'
alias glol="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias gr='git remote -v'
alias gs='git status -sb'
