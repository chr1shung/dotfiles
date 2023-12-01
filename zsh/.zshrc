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

# Change the command execution time stamp shown in the history command output
HIST_STAMPS="dd.mm.yyyy"

ZSH_THEME=""
#fpath+=("$(brew --prefix)/share/zsh/site-functions")
autoload -U promptinit; promptinit
prompt pure

# Fix slow bracketed-paste
DISABLE_MAGIC_FUNCTIONS="true"

setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt appendhistory           # Immediately append history instead of overwriting
setopt nobeep

plugins=(
  git
  kubectl
  fast-syntax-highlighting
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

################# Config ####################

eval "$(zoxide init zsh)"

# Golang
export PATH="$PATH:$(go env GOPATH)/bin"

alias t='task -g'
alias gg='git graph'
alias cat='bat --style=plain --theme=1337'

alias ld='eza -lD --icons'
alias lf='eza -lF --icons --color=always | grep -v /'
alias lh='eza -dl .* --icons --group-directories-first'
alias ll='eza -al --icons --group-directories-first'
alias ls='eza -alF --icons --color=always --sort=size | grep -v /'
alias lt='eza -al --icons --sort=modified'

