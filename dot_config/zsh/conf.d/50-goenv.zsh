# https://github.com/syndbg/goenv
# goenv installed via brew

export GOENV_ROOT="$HOME/.goenv"
export GOENV_GOPATH_PREFIX="$HOME/.go"
eval "$(goenv init -)"
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"
