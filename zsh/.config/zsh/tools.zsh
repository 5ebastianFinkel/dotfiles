# Tool configurations

# Initialize zoxide
eval "$(zoxide init zsh)"

# Set FZF to use ripgrep for faster file searching
export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'

# Configure preview window for file selection
export FZF_CTRL_T_OPTS="--preview 'bat --style=numbers --color=always {} 2> /dev/null || cat {}'"

# Complete Catppuccin Frappé configuration for FZF with preview settings
export FZF_DEFAULT_OPTS=" \
--color=bg+:#414559,bg:#303446,spinner:#f2d5cf,hl:#e78284 \
--color=fg:#c6d0f5,header:#e78284,info:#ca9ee6,pointer:#f2d5cf \
--color=marker:#f2d5cf,fg+:#c6d0f5,prompt:#ca9ee6,hl+:#e78284 \
--color=border:#8caaee \
--border='rounded' \
--border-label='[ Search ]' \
--preview-window='border-rounded' \
--prompt='> ' \
--marker='✓' \
--pointer='◆' \
--separator='─' \
--scrollbar='│'"