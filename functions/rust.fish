function rust -a project file
    cd ~/Codes/Rust
    if test -n "$project"
        if test -e $project
            cd $project/src
        end
    end
    if test -n "$file"
        if test -e $file
            nvim $file
        end
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
