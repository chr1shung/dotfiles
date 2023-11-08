#!/usr/bin/env bash

set -e          # Exit on error
set -o pipefail # Exit on pipe error
set -x          # Enable verbosity

# Dont link DS_Store files
find . -name ".DS_Store" -exec rm {} \;

PROGRAMS=(git tmux vim zsh)
OLD_DOTFILES="dotfile_bk_$(date -u +"%Y%m%d%H%M%S")"
mkdir $OLD_DOTFILES

function backup_if_exists() {
    if [ -f $1 ];
    then
        mv $1 $OLD_DOTFILES
    fi
    if [ -d $1 ];
    then
        mv $1 $OLD_DOTFILES
    fi
}

# Clean common conflicts
backup_if_exists ~/.zshrc
backup_if_exists ~/.vimrc
backup_if_exists ~/.gitconfig
backup_if_exists ~/.tmux.conf
backup_if_exists ~/.alacritty.yml

for program in "${PROGRAMS[@]}"; do
    echo "Configuring $program"
    stow -v --target=$HOME $program
done

echo "Done!"

