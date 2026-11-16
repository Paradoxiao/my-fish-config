function vscode -a file
    just code $PWD $file
    nvim $file.cpp
end
