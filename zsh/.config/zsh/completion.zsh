# Completion system configuration

# Enable completion system
autoload -Uz compinit && compinit

# Enable menu-style completion (use arrow keys to navigate options)
zstyle ':completion:*' menu select

# Case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Colorize completion suggestions
zstyle ':completion:*' list-colors ''

# Enable partial completion (type partial command and press tab)
setopt COMPLETE_IN_WORD
setopt AUTO_MENU

# Enhanced Git completion
# Make git completion more intelligent by prioritizing common commands
zstyle ':completion:*:git-*' tag-order 'common-commands'

# Improve git completion performance and appearance
zstyle ':completion:*:git-checkout:*' sort false
zstyle ':completion:*:git-*:*' group-name ''
zstyle ':completion:*:git-*:*' format '%F{yellow}%d%f'

# NPM completion
# Load npm completion script
[[ -f "${ZSH_CONFIG_DIR}/npm-completion.sh" ]] && source "${ZSH_CONFIG_DIR}/npm-completion.sh"

# Enhanced npm scripts completion
# Dynamically complete npm scripts from package.json
_npm_scripts() {
    if [[ -f package.json ]]; then
        local -a npm_scripts
        while IFS= read -r script; do
            npm_scripts+=("$script")
        done < <(grep -E '"scripts"' package.json -A 100 | grep -E '^\s*"[^"]+"\s*:' | sed -E 's/^\s*"([^"]+)".*/\1/' | head -n -1)
        compadd -a npm_scripts
    fi
}
compdef _npm_scripts npm run