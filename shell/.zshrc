# Default Editors
export KUBE_EDITOR=nvim
export EDITOR=nvim

# Starship
eval "$(starship init zsh)"

# Zsh completion
autoload -Uz compinit && compinit

# Autosuggestions
source "$(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
