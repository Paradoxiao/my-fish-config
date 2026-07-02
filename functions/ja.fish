function ja -a dir file
    cd ~/Codes/Java
    if test -n "$dir"
        if test -e $dir
            cd $dir
        else
            mkdir $dir
            printf "[*]\nindent_size = 2" >$dir/.editorconfig
            ja $dir
        end
    end
    if test -n "$file"
        nvim $file
    end
end
