function py -a dir project file
    cd ~/Codes/Python
    if test -n "$dir"
        if test -d $dir
            cd $dir
            if test -e .venv; and not set -q VIRTUAL_ENV
                source .venv/bin/activate.fish
            end
        else
            uv init $dir
            printf "\n[tool.ruff]\nindent-width = 2" >>$dir/pyproject.toml
            printf "[*]\nindent_size = 2" >$dir/.editorconfig
            py $dir
        end
    end
    if test -n "$project"
        if not test -d src/$project
            mkdir -p src/$project
            py $dir $project
        end
    end
    if test -n "$file"
        nvim src/$project/$file
    end
end
