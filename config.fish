if test $TERM != "screen-256color"
	set -gx TERM xterm-256color
end

status --is-interactive; and . (rbenv init -|psub)

set fish_key_bindings fish_user_key_bindings
set fish_bind_mode insert
