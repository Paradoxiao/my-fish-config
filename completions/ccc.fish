function __fish_mytool_find_cpp_file
    set -l project (commandline -xpc)[2]
    if test -d ~/Codes/CPP/$project
        ls ~/Codes/CPP/$project
    else
        echo main.cpp
    end
end

complete -c ccc -n '__fish_is_nth_token 1' -a '(ls ~/Codes/CPP)' -f
complete -c ccc -n 'not __fish_is_nth_token 1' -a '(__fish_mytool_find_cpp_file)' -f
