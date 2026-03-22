# Plugin management with zplug

source ~/.zplug/init.zsh
zplug "zsh-users/zsh-autosuggestions"
zplug "tj/git-extras", use:"etc/git-extras-completion.zsh"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load

# Autosuggestions configuration
# Set the color of the suggestion text
# For Catppuccin Frappé, we'll use a muted blue-gray that's visible but not distracting
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#626880"

# Configure which strategies to use for suggestions
# This determines how suggestions are chosen
ZSH_AUTOSUGGEST_STRATEGY=(history completion)

# Set the buffer max size to avoid suggesting very long commands
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20

# Configure async mode for better performance
ZSH_AUTOSUGGEST_USE_ASYNC=true