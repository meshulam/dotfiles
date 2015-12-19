
## Vim

Vim plugins are managed by Pathogen and installed as Git submodules.
To add a new vim plugin, add the submodule by repo name from `./.vim/bundle/`. E.g.:

    git submodule add https://github.com/tpope/vim-sleuth.git

To clone all submodules:

    git submodule update --init --recursive
