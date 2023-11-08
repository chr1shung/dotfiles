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

# scm_breeze
[ -s "$HOME/.scm_breeze/scm_breeze.sh" ] && source "$HOME/.scm_breeze/scm_breeze.sh"

# FZF
[ -f ~/.fzf.zsh ] && source $HOME/.fzf.zsh

export FZF_DEFAULT_COMMAND='fd . --hidden --exclude ".git"'
export FZF_DEFAULT_OPTS='-i --reverse --height=90%'

# zoxide fzf opts
export _ZO_FZF_OPTS=$FZF_DEFAULT_OPTS

