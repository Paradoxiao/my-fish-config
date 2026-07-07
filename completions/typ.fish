function __fish_mytool_find_typst_file
    set -l dir (commandline -xpc)[2]
    if test -d ~/Codes/Typst/$dir
        ls ~/Codes/Typst/$dir
    else
        echo main.typ
    end
end

complete -c typ -n '__fish_is_nth_token 1' -a '(ls ~/Codes/Typst)' -f
complete -c typ -n 'not __fish_is_nth_token 1' -a '(__fish_mytool_find_typst_file)' -f
