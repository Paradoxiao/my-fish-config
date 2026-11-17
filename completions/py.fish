function __fish_mytool_find_python_project
    set -l dir (commandline -xpc)[2]
    if test -d ~/Codes/Python/$dir/src
        ls ~/Codes/Python/$dir/src
    else
        echo $dir
    end
end

function __fish_mytool_find_python_file
    set -l dir (commandline -xpc)[2]
    set -l project (commandline -xpc)[3]
    if test -d ~/Codes/Python/$dir/src/$project
        ls ~/Codes/Python/$dir/src/$project
    else
        echo __init__.py
    end
end

complete -c py -n '__fish_is_nth_token 1' -a '(ls ~/Codes/Python)' -f
complete -c py -n '__fish_is_nth_token 2' -a '(__fish_mytool_find_python_project)' -f
complete -c py -n 'not __fish_is_nth_token 1; and not __fish_is_nth_token 2' -a '(__fish_mytool_find_python_file)' -f
