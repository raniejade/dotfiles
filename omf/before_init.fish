function check_umask
    set -l c (umask)

    
    switch $c
        case '0000'
            umask 22
    end
end

check_umask
