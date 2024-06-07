#!/usr/bin/env bash
#
set -e # Exit on error
set -x # Enable verbosity

#######################
# ZSH
#######################

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# zsh-autosuggestion
git clone https://github.com/zsh-users/zsh-autosuggestions.git \
  ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# fast-syntax-highlighting
git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git \
  ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting

# Alacritty theme
mkdir -p ~/Workspace
git clone https://github.com/alacritty/alacritty-theme ~/Workspace/alacritty-theme

#######################
# HomeBrew
#######################

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
eval "$(/opt/homebrew/bin/brew shellenv)"

packages=(
    bat
    bottom
    colima
    docker
    eza
    fd
    git-delta
    go
    go-task
    gping
    jq
    mcfly
    pgcli
    pure
    reattach-to-user-namespace
    ripgrep
    sd
    stow
    tmux
    xh
    zoxide
)
for pkg in "${packages[@]}";
do
    brew install "$pkg"
done

apps=(
    alacritty
    alt-tab
    bruno
    brave-browser
    discord
    goland
    hyperkey
    itsycal
    keepingyouawake
    postico
    raycast
    rectangle
    slack
    spotify
)

for app in "${apps[@]}";
do
    brew install --cask "$app"
done

brew tap homebrew/cask-fonts
brew install font-jetbrains-mono

