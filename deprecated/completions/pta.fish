function __fish_mytool_find_pta_file
    set -l dir (commandline -xpc)[2]
    if test -d ~/Codes/CPP/C++/PTA/$dir
        ls ~/Codes/CPP/C++/PTA/$dir
    end
end

complete -c pta -n '__fish_is_nth_token 1' -a '(ls ~/Codes/CPP/C++/PTA)' -f
complete -c pta -n 'not __fish_is_nth_token 1' -a '(__fish_mytool_find_pta_file)' -f
