if test $TERM != "screen-256color"
	set -gx TERM xterm-256color
end

rvm current 2>&1 > /dev/null
