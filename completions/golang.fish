function __fish_mytool_find_go_file
    set -l project (commandline -xpc)[2]
    if test -d ~/Codes/Go/$project
        ls ~/Codes/Go/$project
    else
        echo main.go
    end
end

complete -c golang -n '__fish_is_nth_token 1' -a '(ls ~/Codes/Go)' -f
complete -c golang -n 'not __fish_is_nth_token 1' -a '(__fish_mytool_find_go_file)' -f
