function __find_file
    set -l cmd (commandline -xpc)
    set -l project ""
    if set -q cmd[2]
        set project $cmd[2]
    end
    if test -n "$project"
        if test -d ~/Codes/Go/$project
            ls ~/Codes/Go/$project
        else
            echo main.go
        end
    end
end

complete -c golang -n __fish_use_subcommand -a "(ls ~/Codes/Go)" -f
complete -c golang -a "(__find_file)" -f
