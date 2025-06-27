eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(mise activate zsh --shims)"
export SHELL=fish
export EDITOR=hx
export PAGER=bat
source ~/.orbstack/shell/init.zsh 2>/dev/null || :
