# brew
HOMEBREW_NO_AUTO_UPDATE=1
export PATH="/usr/local/bin:$PATH"

# gpg
export GPG_TTY="$(tty)"

autoload -Uz compinit && compinit -i

alias cz="chezmoi"

# for zshrc in $ZSH_CONFIG_DIR/rc.d/**/*.zsh; do
for conf in $HOME/.config/zsh/conf.d/**/*.zsh; do
  source "$conf"
done
