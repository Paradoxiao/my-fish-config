function golang -a project file
    cd ~/Codes/Go
    if test -n "$project"
        if test -e $project
            cd $project
        end
    end
    if test -n "$file"
        nvim $file
    end
end
