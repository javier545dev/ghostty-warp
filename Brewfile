# ==============================================
# Ghostty + Zsh Complete Environment - Brewfile
# ==============================================
# Install all dependencies with: brew bundle
# Usage: brew bundle [--file=Brewfile]

# ============================================
# Core Tools
# ============================================

# GitHub CLI - Required for repository management
brew "gh"

# Git - Version control
brew "git"

# ============================================
# Shell Enhancements
# ============================================

# Zsh plugins
brew "zsh-autosuggestions"      # Fish-like autosuggestions
brew "zsh-syntax-highlighting"  # Syntax highlighting

# Fuzzy finder
brew "fzf"                       # Fuzzy finder for files/history
brew "fd"                        # Fast find alternative (used by fzf)

# Navigation & History
brew "zoxide"                    # Smart cd replacement
brew "atuin"                     # Advanced shell history

# Prompt
brew "starship"                  # Modern prompt

# Version Managers
brew "mise"                      # Universal version manager
brew "fnm"                       # Fast Node manager

# ============================================
# Productivity Tools
# ============================================

# Command corrections
brew "thefuck"                   # Auto-correct failed commands

# Snippet manager (Warp Workflows alternative)
tap "knqyf263/pet"
brew "knqyf263/pet/pet"          # CLI snippet manager

# Extended completions
brew "zsh-completions"           # Additional zsh completions

# ============================================
# Session Management
# ============================================

brew "tmux"                      # Terminal multiplexer
brew "tmate"                     # Terminal sharing

# ============================================
# Optional but Recommended
# ============================================

# Better tools
brew "ripgrep"                   # Fast grep alternative
brew "bat"                       # Cat with syntax highlighting
brew "eza"                       # Modern ls replacement
brew "tldr"                      # Simplified man pages
brew "jq"                        # JSON processor

# ============================================
# macOS-specific
# ============================================

# Font installation - Nerd Fonts for all presets
tap "homebrew/cask-fonts"
cask "font-jetbrains-mono-nerd-font"
cask "font-fira-code-nerd-font"
cask "font-caskaydia-cove-nerd-font"
cask "font-iosevka-nerd-font"

# ============================================
# Notes
# ============================================
# - Bun: Install separately from https://bun.sh
# - Oh My Zsh: Install with official script
# - Ghostty: Install from https://ghostty.org
# - AI (ShellGPT): pip3 install shell-gpt (see ai/README.md)
