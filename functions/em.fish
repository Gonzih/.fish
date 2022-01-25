function em
    if grep -i microsoft /proc/version
        set -gx DISPLAY (cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0
        setxkbmap 'us(dvp)'
    end

    emacsclient --create-frame $argv
end
