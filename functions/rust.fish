function rust -a project file
    cd ~/Codes/Rust
    if test -n "$project"
        if test -e $project
            cd $project
        else
            cargo new $project
            printf "[*]\nindent_size = 2" >$project/.editorconfig
            printf "tab_spaces = 2" >$project/rustfmt.toml
            rust $project
        end
    end
    if test -n "$file"
        # cd src
        # if test -e $file
        #     cd ..
        nvim src/$file
        # end
    end
end

# function rust -a project file
#     cd /home/paradoxiao/Win/My/Codes/Rust
#     if test -e $project
#         cd ./$project
#         if test -e ./.vscode
#             rm -rf ./.vscode
#         end
#         mkdir ./.vscode
#         cp ../tasks.json ./.vscode
#         cp ../launch.json ./.vscode
#         if test -z $file
#             set file main.rs
#         end
#         touch ./src/$file ./_input.txt ./_output.txt
#         code ../$project -g ./src/$file
#     else
#         cargo new $project
#         rust $project
#     end
#     cd
# end
