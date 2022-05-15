export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_NO_EMOJI=1
export HOMEBREW_NO_ENV_HINTS=1
export HOMEBREW_NO_INSECURE_REDIRECT=1
export HOMEBREW_CLEANUP_PERIODIC_FULL_DAYS=10
export HOMEBREW_CLEANUP_MAX_AGE_DAYS=30
export HOMEBREW_UPDATE_REPORT_ONLY_INSTALLED=1

export PATH="/usr/local/bin:$PATH"

# BreW
alias bw="brew"
# UPdate
alias bwup="brew update"
# UpgraDe
alias bwud="brew upgrade"
# Outdated
alias bwo="brew outdated"
# Search
alias bws="brew search"
# Install
alias bwi="brew install"
# Uninstall
alias bwu="brew uninstall"
# Cleanup
alias bwc="brew autoremove && brew cleanup"
# List
alias bwl="brew list"
# inFo
alias bwf="brew info"
