if test $TERM != "screen-256color"
	set -gx TERM xterm-256color
end

set -gx PATH /home/gnzh/.rbenv/shims $PATH
