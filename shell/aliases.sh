# Most recently downloaded file
alias dl='ls -t ~/Downloads/* | head -n 1'

alias vi=vim
alias tf=terraform

alias ll='ls -al'

alias less='less -R'

alias be='bundle exec'

alias so='source ~/.zshrc'

# Finding stuff
function ff {
  find . -name "*$**"
}

# Show processes by # of open files
function openfiles {
  lsof | awk '{print $1 "\t" $2 "\t" $3}' | sort | uniq -c | sort -n
}

function flushdns {
  if [[ $(uname) == "Darwin" ]] ; then
    sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder
  fi
}

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

# Copy kitty terminal config to remotes https://wiki.archlinux.org/title/Kitty#Terminal_issues_with_SSH
[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"

alias less='less -R'

alias brews='brew list -1'

###  Ruby  ###

###  Git aliases  ###
alias g='git'
# __git_complete g __git_main   # git bash completion for `g`

# for al in `git config --name-only --get-regexp '^alias' | cut -c 7-`; do
#     # Dynamically create shell aliases 'gXX' from git aliases 'git XX'
#     alias g$al="git $al"
# done
alias git-delete-merged='git branch --merged main | grep -v main | xargs -n 1 git branch -d'


alias unassume-role="unset AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY AWS_SESSION_TOKEN AWS_SECURITY_TOKEN ASSUMED_ROLE"

alias activate="source venv/bin/activate"
