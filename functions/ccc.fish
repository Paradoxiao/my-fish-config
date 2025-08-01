function ccc -a dir file
    cd ~/Codes/CPP
    if test -n "$dir"
        if test -e $dir
            cd $dir
            if test -n "$file"
                touch $file
                nvim $file
            end
        else
            mkdir $dir
            ccc $dir $file
            return
        end
    end
end

# function ccc -a dir file
#     z /home/paradoxiao/Codes/CPP
#     if test -z $dir
#         code ~/Codes/CPP
#         z
#         return
#     end
#     if test -e $dir
#         z ./$dir
#         if test -z $file
#             code ~/Codes/CPP
#             z
#             return
#         end
#         # touch _input.txt _output.txt __io.txt $file
#         touch $file
#     else
#         mkdir ./$dir
#         ccc $dir $file
#         return
#     end
#     code /home/paradoxiao/Codes/CPP -g /home/paradoxiao/Codes/CPP/$dir/$file
#     z
# end
