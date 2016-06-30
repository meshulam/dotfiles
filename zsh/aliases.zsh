
alias notes='vim ~/Dropbox/Notes/thoughts.txt'

# Most recently downloaded file
alias dl='ls -t ~/Downloads/* | head -n 1'


###  I always mean vim  ###
alias vi=vim
alias :e=vim

### Finding stuff ###
function ff {
  find . -name "*$**"
}


###  cd aliases  ###
alias ..='cd ..'
alias cd..='cd ..'
alias cd...='cd ../..'
alias cd....='cd ../../..'
alias cd.....='cd ../../../..'
alias cd/='cd /'

function cd {
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

###  Ruby  ###
alias be='bundle exec'

###  Git aliases  ###
alias g='git'

for al in `git config --name-only --get-regexp '^alias' | cut -c 7-`; do
    # Dynamically create shell aliases 'gXX' from git aliases 'git XX'
    alias g$al="git $al"
done

### ZSH/config helpers ###
alias cfg='cd ~/dotfiles'
alias so='source ~/.zshrc'

