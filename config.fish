if test $TERM != "screen-256color"
	set -gx TERM xterm-256color
end

if test (which rbenv 2>/dev/null)
	status --is-interactive; and . (rbenv init -|psub)
end

set -g fish_key_bindings fish_user_key_bindings
set -g fish_bind_mode insert

set -gx GOPATH /home/gnzh/go
set -gx ANDROID_HOME /home/gnzh/Android/Sdk/

set urxvt_font_size_file ~/.urxvt-font-size
if test -f $urxvt_font_size_file
	fsize (cat $urxvt_font_size_file)
end

aliases

start-gpg-agent

myxkbmap

set -Ux GO111MODULE on
set -Ux fish_user_paths /home/gnzh/bin /run/wrappers/bin /home/gnzh/.nix-profile/bin /nix/var/nix/profiles/default/bin /run/current-system/sw/bin /etc/profiles/per-user/gnzh/bin /home/gnzh/go/bin/
# /home/gnzh/.vim/bundle/dein.vim/repos/github.com/liquidz/vim-iced/bin
# /home/gnzh/.yarn/bin
