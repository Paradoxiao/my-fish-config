function c -a project file
    cd ~/Codes/C
    if test -n "$project"
        if test -e $project
            cd $project
        else
            mkdir $project
            cd $project
            printf "CompileFlags:\n  Add: [ -Wall, -std=c23 ]" >.clangd
            printf "all:\n\t@gcc -Wall -std=c23 main.c -o main\n\t@./main" >Makefile
            printf "all:\n\t@gcc -Wall -std=c23 main.c -o main\n\t@./main" >justfile
        end
    end
    if test -n "$file"
        nvim $file
    end
end
