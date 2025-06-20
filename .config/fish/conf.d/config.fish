if status is-interactive
    set --global fish_greeting
    set --global fish_key_bindings fish_vi_key_bindings
    fish_add_path /opt/homebrew/bin
    starship init fish | source
    zoxide init fish --cmd cd | source
    set --global --export SHELL fish
    set --global --export EDITOR hx
    set --global --export PAGER bat
end
