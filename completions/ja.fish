function __find_file
    set -l cmd (commandline -xpc)
    set -l dir ""
    if set -q cmd[2]
        set dir $cmd[2]
    end
    if test -n "$dir"
        if test -d ~/Codes/Java/$dir
            ls ~/Codes/Java/$dir
        else
            echo Main.java
        end
    end
end

complete -c ja -n __fish_use_subcommand -a "(ls ~/Codes/Java)" -f
complete -c ja -a "(__find_file)" -f
