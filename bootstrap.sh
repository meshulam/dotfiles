#!/usr/bin/env bash

# Can't use something like 'readlink -e $0' because that doesn't work everywhere
# And HP doesn't define $PWD in a sudo environment, so we define our own
# - Via https://github.com/jeffaco/msft-dotfiles/blob/master/bootstrap.sh
case $0 in
    /*|~*)
        SCRIPT_INDIRECT="`dirname $0`"
        ;;
    *)
        PWD="`pwd`"
        SCRIPT_INDIRECT="`dirname $PWD/$0`"
        ;;
esac
BASEDIR="`(cd \"$SCRIPT_INDIRECT\"; pwd -P)`"

echo "Cloning dotfile submodules"
git submodule update --init --recursive

echo "Symlinking files into ${HOME}"
for file in ".zshrc" ".zlogin" ".vimrc" ".vim" ".gitconfig" ".ansible.cfg" ".psqlrc"; do
    ln -i -F -s ${BASEDIR}/${file} ${HOME}
    echo ${file}
done

NEWSHELL_PATH="/usr/local/bin/zsh"

echo "Changing shell to ${NEWSHELL_PATH}"
chsh -s ${NEWSHELL_PATH}

if [[ "$OSTYPE" =~ ^darwin ]]; then
    echo "Detected OSX, running osx.sh"
    source ${BASEDIR}/osx.sh
fi
