# Zsh modular configuration
# This file sources all configuration modules from ~/.config/zsh/

# Define the config directory
ZSH_CONFIG_DIR="${HOME}/.config/zsh"

# Source configuration modules in order
# Path must come first as other modules may depend on it
[[ -f "${ZSH_CONFIG_DIR}/path.zsh" ]] && source "${ZSH_CONFIG_DIR}/path.zsh"

# Completion system
[[ -f "${ZSH_CONFIG_DIR}/completion.zsh" ]] && source "${ZSH_CONFIG_DIR}/completion.zsh"

# External tools (zoxide, fzf)
[[ -f "${ZSH_CONFIG_DIR}/tools.zsh" ]] && source "${ZSH_CONFIG_DIR}/tools.zsh"

# Plugin management
[[ -f "${ZSH_CONFIG_DIR}/plugins.zsh" ]] && source "${ZSH_CONFIG_DIR}/plugins.zsh"

# Custom keybindings (load after plugins)
[[ -f "${ZSH_CONFIG_DIR}/keybindings.zsh" ]] && source "${ZSH_CONFIG_DIR}/keybindings.zsh"

# Local configuration (not tracked in git)
[[ -f "${ZSH_CONFIG_DIR}/local.zsh" ]] && source "${ZSH_CONFIG_DIR}/local.zsh"