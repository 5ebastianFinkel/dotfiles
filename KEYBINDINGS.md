# Keybindings Cheat Sheet

This cheat sheet covers the essential keybindings for tmux and Neovim based on your current configuration.

## Tmux Keybindings

**Prefix key: `Ctrl-a`** (changed from default `Ctrl-b`)

### Session Management
- `tmux new -s <name>` - Create new named session
- `tmux ls` - List sessions
- `tmux attach -t <name>` - Attach to session
- `Ctrl-a d` - Detach from session
- `Ctrl-a $` - Rename current session

### Window Management
- `Ctrl-a c` - Create new window
- `Ctrl-a ,` - Rename current window
- `Ctrl-a n` - Next window
- `Ctrl-a p` - Previous window
- `Ctrl-a 0-9` - Switch to window number
- `Ctrl-a &` - Kill current window

### Pane Management
- `Ctrl-a |` - Split pane vertically
- `Ctrl-a -` - Split pane horizontally
- `Ctrl-a x` - Kill current pane
- `Ctrl-a z` - Toggle pane zoom
- `Ctrl-a Space` - Toggle between layouts

### Pane Navigation (Vim-aware)
- `Ctrl-h` - Move to left pane (works with Neovim splits)
- `Ctrl-j` - Move to down pane (works with Neovim splits)
- `Ctrl-k` - Move to up pane (works with Neovim splits)
- `Ctrl-l` - Move to right pane (works with Neovim splits)

### Pane Resizing
- `Ctrl-a H` - Resize pane left (repeatable)
- `Ctrl-a J` - Resize pane down (repeatable)
- `Ctrl-a K` - Resize pane up (repeatable)
- `Ctrl-a L` - Resize pane right (repeatable)

### Copy Mode (Vi-style)
- `Ctrl-a [` - Enter copy mode
- `v` - Begin selection (in copy mode)
- `y` - Copy selection and exit
- `Ctrl-a ]` - Paste buffer
- `q` - Exit copy mode

### Plugin Management
- `Ctrl-a I` - Install plugins (TPM)
- `Ctrl-a U` - Update plugins
- `Ctrl-a Alt-u` - Uninstall plugins

### Other
- `Ctrl-a ?` - Show all keybindings
- `Ctrl-a :` - Enter command mode
- `Ctrl-a r` - Reload config file

## Neovim Keybindings

### Basic Navigation
- `h/j/k/l` - Move left/down/up/right
- `w/b` - Move forward/backward by word
- `0/$` - Move to beginning/end of line
- `gg/G` - Move to beginning/end of file
- `Ctrl-u/Ctrl-d` - Page up/down
- `%` - Jump to matching bracket

### Editing
- `i/a` - Insert before/after cursor
- `I/A` - Insert at beginning/end of line
- `o/O` - Insert new line below/above
- `x/X` - Delete character forward/backward
- `dd` - Delete line
- `yy` - Copy line
- `p/P` - Paste after/before cursor
- `u/Ctrl-r` - Undo/redo

### Visual Mode
- `v` - Character visual mode
- `V` - Line visual mode
- `Ctrl-v` - Block visual mode
- `gv` - Reselect last visual selection

### Telescope (Fuzzy Finder)
- `<leader>ff` - Find files
- `<leader>fg` - Live grep
- `<leader>fb` - Browse buffers
- `<leader>fh` - Help tags
- `<leader>fo` - Old files (recent)
- `<leader>fc` - Find in current buffer

*Note: Default leader key is `\` unless configured otherwise*

### LSP (Language Server)
- `gd` - Go to definition
- `gr` - Go to references
- `gi` - Go to implementation
- `gt` - Go to type definition
- `K` - Show hover documentation
- `<leader>rn` - Rename symbol
- `<leader>ca` - Code actions
- `[d/]d` - Previous/next diagnostic
- `<leader>e` - Show diagnostic float
- `<leader>q` - Show diagnostics list

### Git (Gitsigns)
- `]c/[c` - Next/previous hunk
- `<leader>hs` - Stage hunk
- `<leader>hr` - Reset hunk
- `<leader>hS` - Stage buffer
- `<leader>hu` - Undo stage hunk
- `<leader>hp` - Preview hunk
- `<leader>hb` - Blame line
- `<leader>tb` - Toggle blame line
- `<leader>hd` - Diff this
- `<leader>hD` - Diff this ~
- `<leader>td` - Toggle deleted

### Buffers & Windows
- `:bnext/:bprev` - Next/previous buffer
- `:bd` - Delete buffer
- `Ctrl-w s` - Split window horizontally
- `Ctrl-w v` - Split window vertically
- `Ctrl-w q` - Close window
- `Ctrl-w =` - Equal size windows
- `Ctrl-w >/<` - Increase/decrease width
- `Ctrl-w +/-` - Increase/decrease height

### File Explorer (Netrw)
- `:Ex` - Open explorer
- `:Sex` - Split explorer
- `:Vex` - Vertical split explorer
- `-` - Go up directory (in Netrw)
- `Enter` - Open file/directory
- `%` - Create new file
- `d` - Create new directory
- `D` - Delete file/directory

## Tips for Beginners

1. **Start with the basics**: Focus on movement and basic editing in Neovim first
2. **Practice tmux prefix**: Remember `Ctrl-a` then the command key
3. **Use help**: `:help` in Neovim, `Ctrl-a ?` in tmux
4. **Vim-aware navigation**: The same `Ctrl-h/j/k/l` works across tmux panes and Neovim splits
5. **Mouse support**: Both tmux and Neovim have mouse support enabled in your config

## Quick Reference

| Action | Tmux | Neovim |
|--------|------|--------|
| Split horizontal | `Ctrl-a -` | `Ctrl-w s` |
| Split vertical | `Ctrl-a |` | `Ctrl-w v` |
| Navigate splits | `Ctrl-h/j/k/l` | `Ctrl-h/j/k/l` |
| Close split | `Ctrl-a x` | `Ctrl-w q` |
| Search | `Ctrl-a [` then `/` | `/` or `<leader>fg` |
| Copy mode | `Ctrl-a [` | Visual mode (`v`) |

Remember: Your tmux status line is at the top, and both tmux and Neovim use the Catppuccin Frappé theme for consistency.