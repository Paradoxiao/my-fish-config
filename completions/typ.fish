function __find_file
    set -l cmd (commandline -xpc)
    set -l dir ""
    if set -q cmd[2]
        set dir $cmd[2]
    end
    if test -n "$dir"
        if test -d ~/Codes/Typst/$dir
            ls ~/Codes/Typst/$dir
        end
    end
end

complete -c typ -n __fish_use_subcommand -a "(ls ~/Codes/Typst)" -f
complete -c typ -n '__fish_seen_subcommand_from (ls ~/Codes/Typst)' -a "(__find_file)" -f
