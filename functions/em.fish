function em
    set -gx DISPLAY (cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0

    setxkbmap 'us(dvp)'

    exec /usr/bin/emacsclient --create-frame $argv
end
