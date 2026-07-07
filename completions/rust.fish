function __fish_mytool_find_rust_file
    set -l project (commandline -xpc)[2]
    if test -d ~/Codes/Rust/$project
        ls ~/Codes/Rust/$project/src
    else
        echo main.rs
    end
end

complete -c rust -n '__fish_is_nth_token 1' -a '(ls ~/Codes/Rust)' -f
complete -c rust -n 'not __fish_is_nth_token 1' -a '(__fish_mytool_find_rust_file)' -f
