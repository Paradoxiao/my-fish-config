function chexe -a dir
    for i in $(fd ".*" $dir --absolute-path)
        sudo chmod a-x $i
    end
    sudo chmod a+x $dir
    for i in $(fd ".*" $dir --absolute-path --type directory)
        sudo chmod a+x $i
    end
end
