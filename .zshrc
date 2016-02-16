# Files in the root of the $ZSH directory are sourced directly.
# Files in subdirs may have other purposes.

# Environment vars that may be useful in this config. Should these get exported?
ZSH=~/dotfiles/zsh
OS=$(uname -a)      # e.g. Darwin, Linux

GLOB="${ZSH}/*"

for sourcefile in $~GLOB
do
    source "$sourcefile"
done
