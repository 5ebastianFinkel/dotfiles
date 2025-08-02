# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a dotfiles repository containing personal configuration files for various development tools. The repository uses a simple directory-based structure where each application has its own top-level directory.

## Structure

- `nvim/` - Neovim configuration
  - `.config/nvim/init.lua` - Main Neovim configuration file
  - `.config/nvim/lazy-lock.json` - Plugin lock file for Lazy.nvim
  - `.config/nvim/lua/plugins/` - Modular plugin configurations
    - `colorscheme.lua` - Catppuccin theme configuration
    - `devicons.lua` - File and folder icons
    - `gitsigns.lua` - Git decorations and hunks
    - `lsp.lua` - Language Server Protocol setup
    - `lualine.lua` - Status line with git info
    - `telescope.lua` - Fuzzy finder
    - `treesitter.lua` - Syntax highlighting
- `tmux/` - Tmux terminal multiplexer configuration
  - `.config/tmux/tmux.conf` - Main tmux configuration file
- `zsh/` - Zsh shell configuration
  - `.zshrc` - Zsh configuration (currently minimal, only contains pnpm PATH)

## Key Technologies

- **Neovim**: Uses Lazy.nvim as plugin manager
- **LSP**: Configured with mason.nvim for language server management
- **Tmux**: Terminal multiplexer for managing multiple terminal sessions
- **Shell**: Zsh with pnpm in PATH

## Prerequisites

### Nerd Font Requirement
For proper display of icons in Neovim (git status, file icons, diagnostics), you need a Nerd Font installed:
- Recommended fonts: JetBrains Mono Nerd Font, Fira Code Nerd Font, Hack Nerd Font
- Download from: https://www.nerdfonts.com/
- Set your terminal to use the installed Nerd Font

Without a Nerd Font, you'll see broken characters instead of icons in:
- Gitsigns (git status in the gutter)
- Lualine status line (file types, git branch, etc.)
- LSP diagnostics (error/warning icons)
- Telescope (file type icons)

## Development Notes

### Current State
- The repository is in early stages with minimal configurations
- Uses GNU Stow for symlink management
- Neovim configuration appears incomplete (init.lua is truncated)

### When Adding Configurations
1. Follow the existing pattern: create a top-level directory for each application
2. Use XDG base directory specification where applicable (e.g., `.config/` subdirectories)
3. Keep application configurations isolated in their respective directories

### Common Tasks
- **Adding new dotfiles**: Create a new directory at the root level for the application
- **Installing configurations**: Use GNU Stow to create symlinks: `stow <directory>`
- **Uninstalling configurations**: Use `stow -D <directory>` to remove symlinks
- **Testing configurations**: Stow will automatically symlink files to their expected locations

### Missing Components
- Installation/setup script
- README documentation
- .gitignore file
- Complete Neovim plugin configurations