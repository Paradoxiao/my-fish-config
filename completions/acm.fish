function __find_class_file
    set -l cmd (commandline -xpc)
    set -l dir ""
    if set -q cmd[2]
        set dir $cmd[2]
    end
    if test -n "$dir"
        if test -d ~/Codes/CPP/C++/ACM/$dir
            ls ~/Codes/CPP/C++/ACM/$dir
        end
    end
end

complete -c acm -n __fish_use_subcommand -a "(ls ~/Codes/CPP/C++/ACM)" -f
complete -c acm -n '__fish_seen_subcommand_from (ls ~/Codes/CPP/C++/ACM)' -a "(__find_class_file)" -f
