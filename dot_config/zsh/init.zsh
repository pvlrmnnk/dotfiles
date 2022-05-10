# gpg
export GPG_TTY="$(tty)"

autoload -Uz compinit && compinit -i

# for zshrc in $ZSH_CONFIG_DIR/rc.d/**/*.zsh; do
for conf in $HOME/.config/zsh/conf.d/**/*.zsh; do
  source "$conf"
done
