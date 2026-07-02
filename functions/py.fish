function py -a dir file
    cd ~/Codes/Python
    if test -n "$dir"
        if test -e $dir
            cd $dir
        else
            mkdir $dir
            printf "[tool.ruff]\nindent-width = 2" >$dir/pyproject.toml
            printf "[*]\nindent_size = 2" >$dir/.editorconfig
            py $dir
        end
    end
    if test -n "$file"
        nvim $file
    end
end
