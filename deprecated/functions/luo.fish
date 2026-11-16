function luo -a file
    cd ~/Codes/CPP/C++/luogu
    if test -n "$file"
        if test -e $file.cpp
            nvim $file.cpp
        else
            printf "\n/*\nSample Input:\n\nSample Output:\n\nHINT:\n*/" >>$file.cpp
            luo $file
        end
    end
end
