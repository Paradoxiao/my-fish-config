function wzh -a dir file
    cd ~/Codes/CPP/C++/WZH
    if test -n "$dir"
        if test -e $dir
            cd $dir
        else
            mkdir $dir
            printf "[*]\nindent_size = 2" >$dir/.editorconfig
            wzh $dir
        end
    end
    if test -n "$file"
        # if test -e $file
        nvim $file
        # end
    end
end
