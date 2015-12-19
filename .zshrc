# Files in the root of the $ZSH directory are sourced directly.
# Files in subdirs may have other purposes.

ZSH=~/cfg/zsh

GLOB="${ZSH}/*"

for sourcefile in $~GLOB
do
    source "$sourcefile"
done
