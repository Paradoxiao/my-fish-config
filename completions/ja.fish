function __fish_mytool_find_java_file
    set -l dir (commandline -xpc)[2]
    if test -d ~/Codes/Java/$dir
        ls ~/Codes/Java/$dir
    else
        echo Main.java
    end
end

complete -c ja -n '__fish_is_nth_token 1' -a '(ls ~/Codes/Java)' -f
complete -c ja -n 'not __fish_is_nth_token 1' -a '(__fish_mytool_find_java_file)' -f
