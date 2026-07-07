function __fish_mytool_find_python_file
    set -l dir (commandline -xpc)[2]
    if test -d ~/Codes/Python/$dir
        ls ~/Codes/Python/$dir
    else
        echo main.py
    end
end

complete -c py -n '__fish_is_nth_token 1' -a '(ls ~/Codes/Python)' -f
complete -c py -n 'not __fish_is_nth_token 1' -a '(__fish_mytool_find_python_file)' -f
