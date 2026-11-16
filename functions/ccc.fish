function ccc -a project file
    cd ~/Codes/CPP
    if test -n "$project"
        if test -e $project
            cd $project
        else
            mkdir $project
            cd $project
            printf "CompileFlags:\n  Add: [ -Wall, -std=c++26 ]" >.clangd
            printf "all:\n\t@g++ -Wall -std=c++23 main.cpp -o main\n\t@./main" >Makefile
            printf "all:\n\t@g++ -Wall -std=c++23 main.cpp -o main\n\t@./main" >justfile
        end
    end
    if test -n "$file"
        nvim $file
    end
end
