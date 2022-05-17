export CONFIG_DIR="${HOME}/.config"
export CACHE_DIR="${HOME}/.cache"
export SHARE_DIR="${HOME}/.local/share"
export BIN_DIR="${HOME}/.local/bin"
export PATH="${BIN_DIR}:${PATH}"

export ZSH_CONFIG_DIR="${CONFIG_DIR}/zsh"
export ZSH_SHARE_DIR="${SHARE_DIR}/zsh"
alias za="alias" # Zsh Alias
alias zs="source $HOME/.zshrc" # Zsh Source
unalias run-help >/dev/null 2>&1
unalias which-command >/dev/null 2>&1

source "${ZSH_CONFIG_DIR}/brew.sh"
source "${ZSH_CONFIG_DIR}/ls.sh"
source "${ZSH_CONFIG_DIR}/gpg.sh"
source "${ZSH_CONFIG_DIR}/chezmoi.sh"
source "${ZSH_CONFIG_DIR}/vscode.sh"
source "${ZSH_CONFIG_DIR}/go.sh"

eval "$(starship init zsh)"
