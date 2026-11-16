function __fish_mytool_find_cpp_file
    set -l dir (commandline -xpc)[2]
    if test -d ~/Codes/CPP/$dir
        ls ~/Codes/CPP/$dir
    end
end

complete -c ccc -n '__fish_is_nth_token 1' -a '(ls ~/Codes/CPP)' -f
complete -c ccc -n 'not __fish_is_nth_token 1' -a '(__fish_mytool_find_cpp_file)' -f

complete -c luo -n '__fish_is_nth_token 1' -a '(ls ~/Codes/CPP/C++/luogu)' -f
