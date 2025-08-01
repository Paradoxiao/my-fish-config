function __find_class_file
    set -l cmd (commandline -xpc)
    set -l dir ""
    if set -q cmd[2]
        set dir $cmd[2]
    end
    if test -n "$dir"
        if test -d ~/Codes/CPP/C++/OJ/$dir
            for i in (ls ~/Codes/CPP/C++/OJ/$dir)
                complete -c oj -n '__fish_seen_subcommand_from (ls ~/Codes/CPP/C++/OJ)' -a "$i" -d "$(awk '/Description/{flag=1;next}/Input/{flag=0} flag' ~/Codes/CPP/C++/OJ/$dir/$i)" -f
            end
        end
    end
end

complete -c oj -n __fish_use_subcommand -a "(ls ~/Codes/CPP/C++/OJ)" -f
complete -c oj -n '__fish_seen_subcommand_from (ls ~/Codes/CPP/C++/OJ)' -a "(__find_class_file)" -f
