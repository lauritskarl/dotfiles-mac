if status is-interactive
    set -g fish_greeting
    set -g fish_key_bindings fish_vi_key_bindings
    fish_add_path /opt/homebrew/bin
    set --global --export SHELL fish
    set --global --export EDITOR hx
    set --global --export PAGER bat
    starship init fish | source
    zoxide init fish --cmd cd | source
end
