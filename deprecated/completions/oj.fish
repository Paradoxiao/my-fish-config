function __fish_mytool_find_oj_cpp_file
    set -l dir (commandline -xpc)[2]
    if test -d ~/Codes/CPP/C++/OJ/$dir
        ls ~/Codes/CPP/C++/OJ/$dir
        # for i in (ls ~/Codes/CPP/C++/OJ/$dir)
        #     complete -c oj -n '__fish_seen_subcommand_from (ls ~/Codes/CPP/C++/OJ)' -a "$i" -d "$(awk '/Description/{flag=1;next}/Input/{flag=0} flag' ~/Codes/CPP/C++/OJ/$dir/$i)" -f
        # end
    end
end

complete -c oj -n '__fish_is_nth_token 1' -a '(ls ~/Codes/CPP/C++/OJ)' -f
complete -c oj -n 'not __fish_is_nth_token 1' -a '(__fish_mytool_find_oj_cpp_file)' -f
