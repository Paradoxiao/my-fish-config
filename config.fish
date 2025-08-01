fish_vi_key_bindings
if status is-interactive

    starship init fish | source
    zoxide init fish | source
    fzf --fish | source

end
