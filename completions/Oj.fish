function __fish_mytool_find_oj_c_file
    set -l dir (commandline -xpc)[2]
    if test -d ~/Codes/CPP/C/OJ/$dir
        ls ~/Codes/CPP/C/OJ/$dir
    end
end

complete -c Oj -n '__fish_is_nth_token 1' -a '(ls ~/Codes/CPP/C/OJ)' -f
complete -c Oj -n 'not __fish_is_nth_token 1' -a '(__fish_mytool_find_oj_c_file)' -f
