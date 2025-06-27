eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(mise activate bash --shims)"
export SHELL=fish
export EDITOR=hx
export PAGER=bat
source ~/.orbstack/shell/init.bash 2>/dev/null || :

if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi
