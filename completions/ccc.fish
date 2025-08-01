function __find_file
    set -l cmd (commandline -xpc)
    set -l dir ""
    if set -q cmd[2]
        set dir $cmd[2]
    end
    if test -n "$dir" && test -d ~/Codes/CPP/$dir
        ls ~/Codes/CPP/$dir
    end
end

complete -c ccc -n __fish_use_subcommand -a "(ls ~/Codes/CPP)" -f
complete -c ccc -n '__fish_seen_subcommand_from (ls ~/Codes/CPP)' -a "(__find_file)" -f

complete -c luo -n __fish_use_subcommand -a "(ls ~/Codes/CPP/C++/luogu)" -f
