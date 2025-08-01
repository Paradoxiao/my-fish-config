function Oj -a dir file
    cd ~/Codes/CPP/C/OJ
    if test -n "$dir"
        if test -e $dir
            cd $dir
        else
            mkdir $dir
            Oj $dir
        end
    end
    if test -n "$file"
        if test -e $file
            nvim $file
        end
    end
end

# function Oj -a dir file
#     if test -z $file
#         set file a.c
#     end
#     if test -z $dir
#         code /home/paradoxiao/Codes/CPP
#         return
#     end
#
#     z /home/paradoxiao/Codes/CPP/C/OJ
#     if test -e $dir
#         z $dir
#         touch a.c b.c c.c d.c e.c f.c g.c h.c i.c j.c k.c l.c m.c n.c o.c #_input.txt _output.txt __io.txt
#         cp /home/paradoxiao/Win/My/Codes/CPP/.justfile ./.justfile
#     else
#         mkdir $dir
#         Oj $dir
#         return
#     end
#     code /home/paradoxiao/Codes/CPP -g /home/paradoxiao/Codes/CPP/C/OJ/$dir/$file
#     z
#     xdg-open 'http://192.168.119.211/JudgeOnline/contest.php?search=%E5%9B%BE%E7%81%B5'
# end
