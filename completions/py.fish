function __find_file
    set -l cmd (commandline -xpc)
    set -l dir ""
    if set -q cmd[2]
        set dir $cmd[2]
    end
    if test -n "$dir"
        if test -d ~/Codes/Python/$dir
            ls ~/Codes/Python/$dir
        else
            echo main.py
        end
    end
end

complete -c py -n __fish_use_subcommand -a "(ls ~/Codes/Python)" -f
complete -c py -a "(__find_file)" -f
