# Ghostty Warp — Modern Terminal Configuration

A modern terminal setup using **Ghostty** with curated open-source tools. Originally inspired by Warp Terminal's productivity features, rebuilt fully open source for **Linux** and **macOS**.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Platform: Linux](https://img.shields.io/badge/Platform-Linux-blue.svg)]()
[![Platform: macOS](https://img.shields.io/badge/Platform-macOS-silver.svg)]()
[![WM: Hyprland](https://img.shields.io/badge/WM-Hyprland-cyan.svg)]()

## Why This Exists

Get Warp's productivity features without proprietary software, telemetry, cloud dependency, or subscription fees.

## Features

### Core Productivity

- **Auto-suggestions** (zsh-autosuggestions) — Fish-like command suggestions
- **Syntax highlighting** (zsh-syntax-highlighting) — Real-time validation
- **Fuzzy search** (fzf) — Fast history and file search
- **Smart navigation** (zoxide) — Jump to directories instantly
- **Beautiful prompt** (starship) — Git integration & modern styling
- **Session management** (tmux) — Splits, panes, persistent sessions

### Customization

- **4 Presets**: Cyberpunk Dev, Minimal Focus, Cozy Coding, Professional Elegant
- **5 Themes**: Tokyo Night, Catppuccin Mocha, Dracula, Nord, Gruvbox
- **5 Fonts**: JetBrains Mono, Fira Code, Cascadia Code, Iosevka, Monaspace Neon

### Cross-Platform

- **Auto-detection** — `gconfig setup` detects your OS and applies the right keybinds and platform settings
- **Linux** — `ctrl+shift+` keybinds, GTK options, Hyprland performance fixes
- **macOS** — `cmd+` keybinds, hidden titlebar, global quick terminal toggle

## Quick Start

```bash
# Clone
git clone https://github.com/Arakiss/ghostty-warp.git
cd ghostty-warp

# Copy to ghostty config
cp -r themes presets fonts tmux keybinds platform gconfig ~/.config/ghostty/
chmod +x ~/.config/ghostty/gconfig

# Add to PATH
ln -sf ~/.config/ghostty/gconfig ~/.local/bin/gconfig

# Detect platform and create symlinks (run once)
gconfig setup
```

**Prerequisites**: [Ghostty](https://ghostty.org), Nerd Fonts (JetBrainsMono recommended)

## Usage

### Switch Presets (full theme + font combos)

```bash
gconfig cyber       # Tokyo Night + Fira Code (futuristic)
gconfig minimal     # Nord + Iosevka (distraction-free)
gconfig cozy        # Gruvbox + JetBrains Mono (comfortable)
gconfig pro         # Dracula + Cascadia Code (professional)
```

### Switch Themes

```bash
gconfig theme tokyo-night
gconfig theme catppuccin-mocha
gconfig theme dracula
gconfig theme nord
gconfig theme gruvbox
```

### Switch Fonts

```bash
gconfig font jetbrains-mono
gconfig font fira-code
gconfig font cascadia-code
gconfig font iosevka
gconfig font monaspace-neon
```

### Other Commands

```bash
gconfig setup       # Detect platform, create symlinks
gconfig status      # Show current configuration
gconfig reset       # Restore default config
gconfig             # Show help
```

### Keyboard Shortcuts

#### Linux

| Action              | Shortcut                        |
| ------------------- | ------------------------------- |
| Copy / Paste        | `Ctrl+Shift+C` / `Ctrl+Shift+V` |
| New tab / Close tab | `Ctrl+Shift+T` / `Ctrl+Shift+W` |
| Jump to tab 1-9     | `Ctrl+Shift+1-9`                |
| Cycle tabs          | `Ctrl+Tab` / `Ctrl+Shift+Tab`   |
| Vertical split      | `Ctrl+Shift+D`                  |
| Horizontal split    | `Ctrl+Shift+O`                  |
| Toggle zoom         | `Ctrl+Shift+Z`                  |
| Navigate splits     | `Ctrl+Shift+Arrow`              |
| Font size +/-       | `Ctrl++` / `Ctrl+-`             |

#### macOS

| Action              | Shortcut                      |
| ------------------- | ----------------------------- |
| Copy / Paste        | `Cmd+C` / `Cmd+V`             |
| New tab / Close tab | `Cmd+T` / `Cmd+W`             |
| Jump to tab 1-9     | `Cmd+1-9`                     |
| Cycle tabs          | `Cmd+Shift+[` / `Cmd+Shift+]` |
| Vertical split      | `Cmd+D`                       |
| Horizontal split    | `Cmd+Shift+D`                 |
| Toggle zoom         | `Cmd+Shift+Z`                 |
| Navigate splits     | `Cmd+Alt+Arrow`               |
| Font size +/-       | `Cmd++` / `Cmd+-`             |
| Quick terminal      | `` Cmd+` `` (global)          |

## tmux Integration

A matching tmux config with Tokyo Night colors and clipboard support:

```bash
ln -sf ~/.config/ghostty/tmux/tmux.conf ~/.tmux.conf
```

Features: vim keybindings, `|` and `-` for splits, mouse support, clipboard integration (wl-copy on Linux, pbcopy on macOS).

## Platform Notes

### Linux (Hyprland)

The config includes `async-backend = epoll` to fix rendering performance issues with Ghostty on Hyprland. See [ghostty#3224](https://github.com/ghostty-org/ghostty/discussions/3224).

### macOS

Includes `macos-titlebar-style = hidden` for a clean look and `global:cmd+grave=toggle_quick_terminal` for a system-wide dropdown terminal.

## Comparison with Warp

| Feature             | Warp         | Ghostty Warp     |
| ------------------- | ------------ | ---------------- |
| Auto-suggestions    | Yes          | Yes (zsh plugin) |
| Syntax highlighting | Yes          | Yes (zsh plugin) |
| Fuzzy history       | Cloud        | Local (fzf)      |
| Session management  | Yes          | Yes (tmux)       |
| Cross-platform      | macOS/Linux  | macOS/Linux      |
| Open source         | No           | Yes              |
| Offline             | No           | Yes              |
| Telemetry           | Yes          | None             |
| Cost                | Subscription | Free             |

## Tech Stack

- [Ghostty](https://ghostty.org) — Terminal emulator
- [Starship](https://starship.rs) — Prompt
- [fzf](https://github.com/junegunn/fzf) — Fuzzy finder
- [zoxide](https://github.com/ajeetdsouza/zoxide) — Smart cd
- [tmux](https://github.com/tmux/tmux) — Terminal multiplexer
- [Nerd Fonts](https://www.nerdfonts.com) — Patched fonts with icons

## License

MIT — Use however you want.

---

**Built for productivity.** Open source. Privacy-first. Cross-platform.
