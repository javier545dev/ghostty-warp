# Ghostty Warp - Modern Terminal Configuration

A modern terminal setup using **Ghostty** with curated open-source tools. Inspired by Warp Terminal, but fully open source and privacy-focused.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Platform: macOS](https://img.shields.io/badge/Platform-macOS-blue.svg)]()

## Why This Exists

Get Warp's productivity features without:
- Proprietary software
- Telemetry
- Cloud dependency
- Subscription fees

## Features

### Core Productivity
- **Auto-suggestions** (zsh-autosuggestions) - Fish-like command suggestions
- **Syntax highlighting** (zsh-syntax-highlighting) - Real-time validation
- **Fuzzy search** (fzf) - Fast history and file search
- **Smart navigation** (zoxide) - Jump to directories instantly
- **Advanced history** (atuin) - Cross-session searchable history
- **Beautiful prompt** (starship) - Git integration & modern styling

### v2.0: Warp Parity Features

- **Workflow Snippets** (pet) - Parameterized command snippets, like Warp Workflows
- **Command Corrections** (thefuck) - Auto-fix typos and failed commands
- **Session Management** (tmux) - Splits, panes, persistent sessions
- **Terminal Sharing** (tmate) - Share your terminal via URL
- **AI Integration** - Works with Claude Code, aider, Gemini CLI (see [ai/README.md](ai/README.md))

### Customization
- **4 Presets**: Cyberpunk Dev, Minimal Focus, Cozy Coding, Professional
- **5 Themes**: Tokyo Night, Catppuccin Mocha, Dracula, Nord, Gruvbox
- **5 Fonts**: Monaspace Neon (default), JetBrains Mono, Fira Code, Cascadia Code, Iosevka

## Quick Start

```bash
# Clone
git clone https://github.com/Arakiss/ghostty-warp.git
cd ghostty-warp

# Install dependencies
./install-deps.sh

# Setup everything
./setup-complete.sh
```

**Prerequisites**: macOS, [Ghostty](https://ghostty.org), [Homebrew](https://brew.sh)

## Usage

### Switch Presets
```bash
gcyber      # Tokyo Night + JetBrains Mono
gminimal    # Nord + Iosevka
gcozy       # Gruvbox + JetBrains Mono
gpro        # Dracula + Cascadia Code
```

### Workflow Snippets (pet)
```bash
pw          # Search workflows
pe          # Execute workflow
pn          # New snippet
pl          # List all
```

### Command Corrections
```bash
git pussh   # Typo
fuck        # Auto-corrects to: git push
```

### Key Features
- `CTRL-R` - Fuzzy history search
- `z <dir>` - Jump to directory
- Type command → see suggestion → press `→` to accept

### Keyboard Shortcuts

**Navigation**
- `Cmd+K` - Clear screen
- `Cmd+T` - New tab
- `Cmd+1-9` - Jump to tab

**Splits**
- `Cmd+D` - Vertical split
- `Cmd+Shift+D` - Horizontal split
- `Cmd+Shift+Enter` - Toggle zoom

**Font Size**
- `Cmd++` / `Cmd+-` - Increase/Decrease
- `Cmd+0` - Reset

## Comparison with Warp

| Feature | Warp | Ghostty Warp |
|---------|------|--------------|
| Auto-suggestions | Yes | Yes |
| Syntax highlighting | Yes | Yes |
| Fuzzy history | Cloud | Local (atuin) |
| Workflows | Yes | Yes (pet) |
| Command corrections | Yes | Yes (thefuck) |
| Session management | Yes | Yes (tmux) |
| Terminal sharing | Cloud | SSH (tmate) |
| AI features | Built-in | BYOK (see ai/) |
| Open source | No | Yes |
| Offline | No | Yes |
| Telemetry | Yes | None |
| Cost | Subscription | Free |

## Documentation

- [IMPROVEMENTS.md](IMPROVEMENTS.md) - Changelog & release notes
- [FEATURE_COMPARISON.md](FEATURE_COMPARISON.md) - Detailed Warp comparison
- [QUICKSTART.md](QUICKSTART.md) - Quick reference
- [ai/README.md](ai/README.md) - AI tool recommendations
- [workflows/README.md](workflows/README.md) - Workflow snippets guide
- [tmux/README.md](tmux/README.md) - Session management

## Sync Across Machines

```bash
# Machine 1: Push changes
./sync-to-repo.sh "Update config"
git push

# Machine 2: Pull changes
./sync-from-repo.sh
```

## Tech Stack

- [Ghostty](https://ghostty.org) - Terminal emulator
- [Oh My Zsh](https://ohmyz.sh) - Zsh framework
- [Starship](https://starship.rs) - Prompt
- [fzf](https://github.com/junegunn/fzf) - Fuzzy finder
- [zoxide](https://github.com/ajeetdsouza/zoxide) - Smart cd
- [atuin](https://atuin.sh) - Shell history
- [pet](https://github.com/knqyf263/pet) - Snippet manager
- [thefuck](https://github.com/nvbn/thefuck) - Command corrections
- [tmux](https://github.com/tmux/tmux) - Terminal multiplexer

## License

MIT - Use however you want.

---

**Built for productivity.** Open source. Privacy-first.
