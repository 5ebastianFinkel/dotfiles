# Dotfiles

Personal configuration files for various development tools.

## Prerequisites

- [GNU Stow](https://www.gnu.org/software/stow/) for symlink management
- [Nerd Font](https://www.nerdfonts.com/) for proper icon display (recommended: JetBrains Mono, Fira Code, or Hack)
- Git for cloning repositories

## Installation

### 1. Clone this repository

```bash
git clone git@github.com:5ebastianFinkel/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

### 2. Install configurations using Stow

```bash
# Install all configurations
stow nvim tmux zsh

# Or install individually
stow nvim
stow tmux
stow zsh
```

### 3. Tmux Plugin Manager (TPM) Setup

The tmux configuration requires TPM for plugin management. Install it before using tmux:

```bash
# Clone TPM repository
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Start tmux
tmux

# Install plugins (inside tmux)
# Press Ctrl-a + I (capital i) to install plugins
```

### 4. Neovim Setup

After stowing Neovim configuration:

1. Open Neovim: `nvim`
2. Lazy.nvim will automatically install on first launch
3. Plugins will be installed automatically

## Structure

- `nvim/` - Neovim configuration with Lazy.nvim
- `tmux/` - Tmux configuration with TPM and Catppuccin theme
- `zsh/` - Zsh shell configuration

## Features

### Tmux
- Custom prefix key: `Ctrl-a`
- Catppuccin Frappé theme
- Vim-aware pane navigation
- Minimal status line at top
- Mouse support enabled

### Neovim
- Lazy.nvim plugin manager
- LSP support with Mason
- Telescope fuzzy finder
- Catppuccin Frappé theme
- Git integration with Gitsigns

## Keybindings

See [KEYBINDINGS.md](KEYBINDINGS.md) for a comprehensive list of shortcuts.

## Troubleshooting

### Tmux plugins not loading
- Ensure TPM is installed: `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`
- Inside tmux, press `Ctrl-a + I` to install plugins
- Reload tmux config: `tmux source ~/.config/tmux/tmux.conf`

### Icons showing as boxes
- Install a [Nerd Font](https://www.nerdfonts.com/)
- Configure your terminal to use the installed Nerd Font

### Stow conflicts
- If you get conflicts when stowing, backup existing configs first
- Use `stow -D <package>` to unstow
- Use `stow -n <package>` to simulate without making changes