unalias run-help >/dev/null 2>&1
unalias which-command >/dev/null 2>&1

alias za="alias" # Zsh Alias
alias zs="source $HOME/.zshrc" # Zsh Source

alias ls="ls -G"
alias ll="ls -aFhl" # ListLong
alias sl="ln -sfv" # SymLink

alias bw="brew" # BreW
alias bwup="brew update" # BreW UPdate
alias bwud="brew upgrade" # BreW UpgraDe
alias bwo="brew outdated" # BreW Outdated
alias bws="brew search" # BreW Search
alias bwi="brew install" # BreW Install
alias bwu="brew uninstall" # BreW Uninstall
alias bwc="brew autoremove && brew cleanup" # BreW Cleanup
alias bwl="brew list" # BreW List
alias bwf="brew info" # BreW inFo

alias cz="chezmoi" # CheZmoi
alias czm="cz managed" # CheZmoi Managed
alias cza="cz add" # CheZmoi Add
alias czp="cz apply" # CheZmoi aPply
alias cze="cz edit" # CheZmoi Edit
alias czf="cz forget" # CheZmoi Forget
alias czr="cz remove" # CheZmoi Remove
alias czs="cz status" # CheZmoi Status

alias vc="code -n" # Visual studio Code
alias vcd="vc -d" # Visual studio Code Diff
