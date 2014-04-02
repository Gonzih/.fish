if test $TERM != "screen-256color"
	set -gx TERM xterm-256color
end

rvm use system 2>&1 > /dev/null

set fish_key_bindings fish_user_key_bindings
