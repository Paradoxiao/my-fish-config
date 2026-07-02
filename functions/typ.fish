function typ -a dir file
    cd ~/Codes/Typst/
    if test -n "$dir"
        if test -e $dir
            cd $dir
        else
            mkdir $dir
            printf "[*]\nindent_size = 2" >$dir/.editorconfig
            typ $dir
        end
    end
    if test -n "$file"
        nvim $file
    end
end
