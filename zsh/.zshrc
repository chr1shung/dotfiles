#!/usr/bin/env zsh

# Disable error when using glob patterns that don't have matches
setopt +o nomatch

export GPG_TTY=$(tty)

eval "$(/opt/homebrew/bin/brew shellenv)"
BREW_PREFIX="$(brew --prefix)"

################# Oh MyZsh ####################

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Use hyphen-insensitive completion: _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# disable command auto-correction.
ENABLE_CORRECTION="false"


ZSH_THEME=""
fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit
prompt pure

# Fix slow bracketed-paste
DISABLE_MAGIC_FUNCTIONS="true"

setopt nobeep

setopt EXTENDED_HISTORY          # Write the history file in the ':start:elapsed;command' format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire a duplicate event first when trimming history.
setopt HIST_IGNORE_DUPS          # Do not record an event that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete an old recorded event if a new event is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a previously found event.
setopt HIST_IGNORE_SPACE         # Do not record an event starting with a space.
setopt HIST_SAVE_NO_DUPS         # Do not write a duplicate event to the history file.
setopt HIST_VERIFY               # Do not execute immediately upon history expansion.
setopt APPEND_HISTORY            # append to history file
setopt HIST_NO_STORE             # Don't store history commands
# Change the command execution time stamp shown in the history command output
HIST_STAMPS="dd.mm.yyyy"
HISTORY_IGNORE="(cd|z|ls|ld|lf|lh|ll|ls|lt|exit|pwd|clear)*"

plugins=(
  git
  fast-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

################# Config ####################

eval "$(zoxide init zsh)"

eval "$(mcfly init zsh)"
export MCFLY_FUZZY=2
export MCFLY_KEY_SCHEME=vim

# Go
export PATH="$PATH:$(go env GOPATH)/bin"

alias gg='git graph'
alias cat='bat --style=plain --theme=1337'

alias ld='eza -lD'
alias lf='eza -lF --color=always | grep -v /'
alias lh='eza -dl .* --group-directories-first'
alias ll='eza -al --group-directories-first'
alias ls='eza -alF --color=always --sort=size | grep -v /'
alias lt='eza -al --sort=modified'
