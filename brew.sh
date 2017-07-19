#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated)
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Install shell
brew install zsh

# Install wget with IRI support
brew install wget 

# Install more recent versions of some OS X tools
brew install vim --with-override-system-vi
brew install grep

# Install other useful binaries
brew install ack
brew install git
brew install lynx
brew install tree
brew install python

# Remove outdated versions from the cellar
brew cleanup
