# Changelog

## v2.0 - January 2026

Major feature release closing the gap with Warp Terminal.

### New Features

#### Workflow Snippets (pet)
- Parameterized command snippets, like Warp Workflows
- 45+ pre-built snippets for git, docker, and development
- Fuzzy search with fzf integration
- Aliases: `pw` (search), `pe` (exec), `pn` (new), `pl` (list)

#### Command Corrections (thefuck)
- Auto-correct failed commands
- Aliases: `fuck`, `fix`

#### Session Management (tmux)
- Curated tmux config matching Ghostty Warp aesthetics
- Tokyo Night inspired status bar
- Vim-style keybindings
- Mouse support enabled

#### Terminal Sharing (tmate)
- Share terminal sessions via SSH URL
- Read-only sharing option

#### AI Integration Guide
- Recommendations for modern AI tools
- Claude Code, aider, Gemini CLI (free), Codex
- Local models with Ollama
- BYOK (Bring Your Own Key) philosophy

### Brewfile Additions
```
thefuck
pet
zsh-completions
tmux
tmate
```

### New Aliases
```bash
# Workflows
pw, pe, pn, pl

# Command corrections
fuck, fix

# Extended completions enabled
```

### Documentation
- Updated README with v2.0 features
- Revised FEATURE_COMPARISON.md (~85% parity)
- New ai/README.md, workflows/README.md, tmux/README.md

---

## v1.1 - October 27, 2025

### Automatic Font Installation
- Nerd Fonts install automatically with setup
- Dedicated `install-fonts.sh` script

### Comprehensive Keybindings
All presets now include:
- `Shift+Enter` - Multiline commands
- `Cmd+C/V` - Copy/Paste
- `Cmd++/-/0` - Font size control
- `Cmd+D` / `Cmd+Shift+D` - Splits
- `Cmd+1-9` - Tab navigation

---

## v1.0 - October 2025

Initial release with:
- 4 curated presets
- 5 color themes
- 4 Nerd Fonts
- Core productivity tools (fzf, zoxide, atuin, starship)
- Git-based sync across machines
