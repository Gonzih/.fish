if test $TERM != "screen-256color"
	set -gx TERM xterm-256color
end

if test (which rbenv 2>/dev/null)
	status --is-interactive; and . (rbenv init -|psub)
end

set -g fish_key_bindings fish_user_key_bindings
set -g fish_bind_mode insert

set -gx GOPATH $HOME/go
set -gx ANDROID_HOME $HOME/Android/Sdk/

set urxvt_font_size_file ~/.urxvt-font-size
if test -f $urxvt_font_size_file
	fsize (cat $urxvt_font_size_file)
end

aliases

start-gpg-agent

myxkbmap

set -Ux GO111MODULE on
set -Ux NPM_PACKAGES $HOME/.npm-packages
set -Ux fish_user_paths $HOME/bin /run/wrappers/bin $HOME/.nix-profile/bin /nix/var/nix/profiles/default/bin /run/current-system/sw/bin /etc/profiles/per-user/gnzh/bin $HOME/go/bin/ $HOME/.cargo/bin/ $HOME/.linkerd2/bin $HOME/.npm-packages/bin $HOME/.pub-cache/bin $HOME/.local/bin
set -gx EDITOR nvim

set fish_function_path $fish_function_path $HOME/.config/plugin-foreign-env/functions

#fenv source $HOME/.nix-profile/etc/profile.d/hm-session-vars.sh
