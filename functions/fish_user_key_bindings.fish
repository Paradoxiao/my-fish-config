function fish_user_key_bindings
    #bind -M default y 'commandline -b | fish_clipboard_copy'
    #bind -M visual -m default y kill-selection yank end-selection #'echo $fish_killring[1] | fish_clipboard_copy' repaint-mode
    #bind -s --preset -M visual -m default y "fish_clipboard_copy; commandline -f end-selection repaint-mode"
    #bind -M default p 'commandline -i (fish_clipboard_paste)'
    bind -M insert delete delete-char
    bind -M default delete delete-char

    set -gx ATUIN_NOBIND true
    atuin init fish | source
    bind -M insert ctrl-up _atuin_search
    #bind -M insert ctrl-up _atuin_bind_up
    #bind -M insert \e\[1\;5A _atuin_bind_up
end
