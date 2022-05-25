export CONFIG_DIR="${HOME}/.config"
export CACHE_DIR="${HOME}/.cache"
export SHARE_DIR="${HOME}/.local/share"
export BIN_DIR="${HOME}/.local/bin"
export PATH="${BIN_DIR}:${PATH}"

# zsh
export ZSH_CONFIG_DIR="${CONFIG_DIR}/zsh"
export ZSH_SHARE_DIR="${SHARE_DIR}/zsh"
export HISTFILESIZE=10000
export HISTSIZE=10000
export HISTFILE="${HOME}/.zsh_history"
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS
unalias run-help >/dev/null 2>&1
unalias which-command >/dev/null 2>&1
alias za="alias" # Zsh Alias
alias zs="source $HOME/.zshrc" # Zsh Source

# go
export GOPATH="${HOME}/.go"
export GOBIN="${BIN_DIR}"
export GOCACHE="${CACHE_DIR}/go/build"
export GOMODCACHE="${CACHE_DIR}/go/mod"

# etc
source "${ZSH_CONFIG_DIR}/brew.sh"
source "${ZSH_CONFIG_DIR}/ls.sh"
source "${ZSH_CONFIG_DIR}/gpg.sh"
source "${ZSH_CONFIG_DIR}/chezmoi.sh"
source "${ZSH_CONFIG_DIR}/vscode.sh"

# prompt
eval "$(starship init zsh)"
