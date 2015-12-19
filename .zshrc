# Actual configs are kept in FILES.

export ZSH_CONFIG_DIR=~/cfg/zsh

GLOB="${ZSH_CONFIG_DIR}/*"

for sourcefile in $~GLOB
do
    source "$sourcefile"
done
