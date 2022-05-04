# brew
HOMEBREW_NO_AUTO_UPDATE=1
export PATH="/usr/local/bin:$PATH"

# gpg
export GPG_TTY="$(tty)"

alias ls="ls -G"
alias ll="exa -aFgl --time-style long-iso --group-directories-first"

b() {
    if [[ $@ == "o" ]]; then
        brew update > /dev/null 2>&1 \
        && brew outdated --greedy
    elif [[ $@ == "u" ]]; then
        command brew upgrade --greedy
    else
        command brew "$@"
    fi
}

s() {
    source ~/.zshrc
}

autoload -Uz compinit && compinit -i

alias cz="chezmoi"

h() {
    cd ~
}

eval "$(starship init zsh)"

# for zshrc in $ZSH_CONFIG_DIR/rc.d/**/*.zsh; do
for conf in $HOME/.config/zsh/conf.d/**/*.zsh; do
  source "$conf"
done
