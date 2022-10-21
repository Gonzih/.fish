function myxkbmap
    switch (uname)
        case Linux
            setxkbmap -option ctrl:nocaps -option grp:lctrl_toggle 'us(dvp),ru'
    end
end
