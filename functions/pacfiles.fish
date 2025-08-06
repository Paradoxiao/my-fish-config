function pacfiles -a pkg
    set filename (string split ' ' (pacman -Q $pkg))
    cat /var/lib/pacman/local/$filename[1]-$filename[2]/files
end
