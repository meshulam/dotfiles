###  I always mean vim  ###
alias vi=vim
alias :e=vim

###  cd aliases  ###
alias ..='cd ..'
alias cd..='cd ..'
alias cd...='cd ../..'
alias cd....='cd ../../..'
alias cd.....='cd ../../../..'
alias cd/='cd /'

cd () {
  if   [[ "x$*" == "x..." ]]; then
    cd ../..
  elif [[ "x$*" == "x...." ]]; then
    cd ../../..
  else
    builtin cd "$@"
  fi
}

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

alias dotfiles='cd ~/dotfiles'
