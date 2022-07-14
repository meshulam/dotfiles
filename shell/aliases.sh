# Most recently downloaded file
alias dl='ls -t ~/Downloads/* | head -n 1'

###  I always mean vim  ###
alias vi=vim

# Finding stuff
function ff {
  find . -name "*$**"
}

# Show processes by # of open files
function openfiles {
  lsof | awk '{print $1 "\t" $2 "\t" $3}' | sort | uniq -c | sort -n
}

alias ll='ls -al'

###  cd aliases  ###
alias ..='cd ..'

function cd {
  if   [[ "x$*" == "x..." ]]; then
    cd ../..
  elif [[ "x$*" == "x...." ]]; then
    cd ../../..
  else
    builtin cd "$@"
  fi
}

alias less='less -R'

###  OSX-specific aliases  ###
alias brews='brew list -1'

###  Ruby  ###
alias be='bundle exec'

###  Git aliases  ###
alias g='git'
__git_complete g __git_main   # git bash completion for `g`

for al in `git config --name-only --get-regexp '^alias' | cut -c 7-`; do
    # Dynamically create shell aliases 'gXX' from git aliases 'git XX'
    alias g$al="git $al"
done
alias git-delete-merged='git branch --merged main | grep -v main | xargs -n 1 git branch -d'

### ZSH/config helpers ###
alias so='source ~/.zshrc'

