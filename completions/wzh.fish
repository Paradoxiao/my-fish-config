function __find_file
    set -l cmd (commandline -xpc)
    set -l dir ""
    if set -q cmd[2]
        set dir $cmd[2]
    end
    if test -n "$dir"
        if test -d ~/Codes/CPP/C++/WZH/$dir
            ls ~/Codes/CPP/C++/WZH/$dir
        end
    end
end

complete -c wzh -n __fish_use_subcommand -a "(ls ~/Codes/CPP/C++/WZH)" -f
complete -c wzh -n '__fish_seen_subcommand_from (ls ~/Codes/CPP/C++/WZH)' -a "(__find_file)" -f
