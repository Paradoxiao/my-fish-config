function pta -a dir file
    cd ~/Codes/CPP/C++/PTA
    if test -n "$dir"
        if test -e $dir
            cd $dir
        else
            mkdir $dir
            pta $dir
        end
    end
    if test -n "$file"
        if test -e $file
            nvim $file
        end
    end
end

# function pta -a dir file
#     xdg-open "https://pintia.cn"
#     if test -z $file
#         set file a.cpp
#     end
#     if test -z $dir
#         code /home/paradoxiao/Codes/CPP
#         return
#     end
#     z /home/paradoxiao/Codes/CPP/C++/PTA
#     if test -e $dir
#         z $dir
#         touch a.cpp b.cpp c.cpp d.cpp e.cpp f.cpp g.cpp h.cpp i.cpp j.cpp k.cpp l.cpp m.cpp n.cpp o.cpp #_input.txt _output.txt __io.txt
#         cp /home/paradoxiao/Win/My/Codes/CPP/.justfile ./.justfile
#     else
#         mkdir $dir
#         pta $dir
#         return
#     end
#     code /home/paradoxiao/Codes/CPP -g /home/paradoxiao/Codes/CPP/C++/PTA/$dir/$file
#     z
#     xdg-open 'http://192.168.119.211/JudgeOnline/contest.php?search=%E5%9B%BE%E7%81%B5'
# end
#
