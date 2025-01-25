#!/usr/bin/env bash
#
set -e # Exit on error
set -x # Enable verbosity

# Put the Dock on the left of the screen
defaults write com.apple.dock "orientation" -string "left"

# Do not display recent apps in the Dock
defaults write com.apple.dock "show-recents" -bool "false"

# Tap to click (not working)
defaults write com.apple.AppleMultitouchTrackpad "Clicking" -bool "true"

# Enable dragging with three finger drag (not working)
defaults write com.apple.AppleMultitouchTrackpad "TrackpadThreeFingerDrag" -bool "true"

# Hot corner
defaults write com.apple.dock wvous-tr-corner -int 5
defaults write com.apple.dock wvous-br-corner -int 4

# Save screenshots to the desktop
defaults write com.apple.screencapture location -string "${HOME}/Desktop"

# Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
defaults write com.apple.screencapture type -string "png"

# Avoid creating .DS_Store files on network or USB volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

# key-repeat
defaults write -g InitialKeyRepeat -int 10
defaults write -g KeyRepeat -int 3
defaults write -g ApplePressAndHoldEnabled -bool false

killall Dock

# TODO: disable Spotlight
# Reference:
# https://macos-defaults.com/
# https://github.com/kevinSuttle/macOS-Defaults/blob/master/.macos
