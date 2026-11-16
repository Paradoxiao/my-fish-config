function __fish_mytool_find_c_file
    set -l project (commandline -xpc)[2]
    if test -d ~/Codes/C/$project
        ls ~/Codes/C/$project
    else
        echo main.c
    end
end

complete -c c -n '__fish_is_nth_token 1' -a '(ls ~/Codes/C)' -f
complete -c c -n 'not __fish_is_nth_token 1' -a '(__fish_mytool_find_c_file)' -f
