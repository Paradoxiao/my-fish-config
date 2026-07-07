function __fish_mytool_find_wzh_file
    set -l dir (commandline -xpc)[2]
    if test -d ~/Codes/CPP/C++/WZH/$dir
        ls ~/Codes/CPP/C++/WZH/$dir
    end
end

complete -c wzh -n '__fish_is_nth_token 1' -a '(ls ~/Codes/CPP/C++/WZH)' -f
complete -c wzh -n 'not __fish_is_nth_token 1' -a '(__fish_mytool_find_wzh_file)' -f
