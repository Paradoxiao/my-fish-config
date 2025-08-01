function __find_class_file
    set -l cmd (commandline -xpc)
    set -l project ""
    if set -q cmd[2]
        set project $cmd[2]
    end
    if test -n "$project"
        if test -d ~/Codes/Rust/$project
            ls ~/Codes/Rust/$project/src
        end
    end
end

complete -c rust -n __fish_use_subcommand -a "(ls ~/Codes/Rust)" -f
complete -c rust -n '__fish_seen_subcommand_from (ls ~/Codes/Rust)' -a "(__find_class_file)" -f
