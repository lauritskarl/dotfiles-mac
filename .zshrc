eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(starship init zsh)"
eval "$(zoxide init zsh --cmd cd)"
export SHELL=fish
export EDITOR=hx
export PAGER=bat
source ~/.orbstack/shell/init.zsh 2>/dev/null || :
