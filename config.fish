if test $TERM != "screen-256color"
	set -gx TERM xterm-256color
end

if test (which rbenv 2>/dev/null)
	status --is-interactive; and . (rbenv init -|psub)
end

set -g fish_key_bindings fish_user_key_bindings
set -g fish_bind_mode insert

set -gx GOPATH /home/gnzh/go-projects

set urxvt_font_size_file ~/.urxvt-font-size
if test -f $urxvt_font_size_file
	fsize (cat $urxvt_font_size_file)
end

aliases
