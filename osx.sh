#!/usr/bin/env bash

# Based on http://mths.be/osx

# Ask for the administrator password upfront
sudo -v

# to set hostname: System Settings → Sharing

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1

# Disable press-and-hold character variant popup
defaults write -g ApplePressAndHoldEnabled -bool false

# symlink 1password ssh agent socket for consistency between macOS and Linux
mkdir -p ~/.1password && ln -s ~/Library/Group\ Containers/2BUA8C4S2C.com.1password/t/agent.sock ~/.1password/agent.sock

sudo sh -c 'echo "/opt/homebrew/bin/bash" >> /etc/shells'
chsh -s /opt/homebrew/bin/bash
