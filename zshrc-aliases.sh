#!/usr/bin/env bash

# ==============================================
# Ghostty Configuration - Zsh Aliases
# ==============================================
# Add these lines to your ~/.zshrc

# Ghostty Configuration Aliases
alias gconfig="$HOME/.config/ghostty/gconfig"
alias ghostty-warp="$HOME/.config/ghostty/interactive-config.sh"
alias gconfig-interactive="$HOME/.config/ghostty/interactive-config.sh"
alias gconfig-switch="$HOME/.config/ghostty/switch-config.sh"

# Quick preset aliases
alias gcyber="$HOME/.config/ghostty/gconfig cyber"
alias gminimal="$HOME/.config/ghostty/gconfig minimal"
alias gcozy="$HOME/.config/ghostty/gconfig cozy"
alias gpro="$HOME/.config/ghostty/gconfig pro"

# ==============================================
# Workflow Snippets (pet)
# ==============================================
# Requires: brew install knqyf263/pet/pet
alias pw='pet search'             # Search workflows
alias pe='pet exec'               # Execute workflow
alias pn='pet new'                # New workflow snippet
alias pl='pet list'               # List all snippets

# ==============================================
# Command Corrections (thefuck)
# ==============================================
# Requires: brew install thefuck
eval $(thefuck --alias 2>/dev/null)
eval $(thefuck --alias fix 2>/dev/null)

# ==============================================
# Extended Completions
# ==============================================
# Requires: brew install zsh-completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  autoload -Uz compinit
  compinit
fi
