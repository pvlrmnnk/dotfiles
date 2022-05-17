export CONFIG_DIR="${HOME}/.config"
export CACHE_DIR="${HOME}/.cache"
export SHARE_DIR="${HOME}/.local/share"
export BIN_DIR="${HOME}/.local/bin"
export PATH="${BIN_DIR}:${PATH}"

export ZSH_CONFIG_DIR="${CONFIG_DIR}/zsh"
export ZSH_SHARE_DIR="${SHARE_DIR}/zsh"
export HISTFILESIZE=1000000
export HISTSIZE=1000000
export HISTFILE="${HOME}/.zsh_history"

setopt INC_APPEND_HISTORY

unalias run-help >/dev/null 2>&1
unalias which-command >/dev/null 2>&1
alias za="alias" # Zsh Alias
alias zs="source $HOME/.zshrc" # Zsh Source

# etc
source "${ZSH_CONFIG_DIR}/brew.sh"
source "${ZSH_CONFIG_DIR}/ls.sh"
source "${ZSH_CONFIG_DIR}/gpg.sh"
source "${ZSH_CONFIG_DIR}/chezmoi.sh"
source "${ZSH_CONFIG_DIR}/vscode.sh"
source "${ZSH_CONFIG_DIR}/go.sh"

# prompt
eval "$(starship init zsh)"
