function golang -a project file
    cd ~/Codes/Go
    if test -n "$project"
        if test -e $project
            cd $project
        else
            mkdir $project
            printf "[*]\nindent_size = 2" >$project/.editorconfig
            cd $project
            go mod init $project
        end
    end
    if test -n "$file"
        nvim $file
    end
end
