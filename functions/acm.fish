function acm -a dir file
    cd ~/Codes/CPP/C++/ACM
    if test -n "$dir"
        if test -e $dir
            cd $dir
        else
            mkdir $dir
            acm $dir
        end
    end
    if test -n "$file"
        if test -e $file
            nvim $file
        end
    end
end
