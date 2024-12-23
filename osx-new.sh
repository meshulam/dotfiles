#!/usr/bin/env bash

# Based on http://mths.be/osx

# Ask for the administrator password upfront
sudo -v

# Set a blazingly fast keyboard repeat rate
defaults write NSGlobalDomain KeyRepeat -int 1

# Disable press-and-hold character variant popup
defaults write -g ApplePressAndHoldEnabled -bool false
