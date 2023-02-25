if test $TERM != "screen-256color"
	set -gx TERM xterm-256color
end

set -g fish_key_bindings fish_user_key_bindings
set -g fish_bind_mode insert

set -gx GOPATH $HOME/go
set -gx ANDROID_HOME $HOME/Android/Sdk/

aliases

start-gpg-agent

myxkbmap

set -Ux GO111MODULE on
set -Ux NPM_PACKAGES $HOME/.npm-packages
set -Ux PYENV_ROOT $HOME/.pyenv
set -gx EDITOR emacsclient -t

set -Ux fish_user_paths $HOME/bin /opt/homebrew/bin "/opt/homebrew/opt/openjdk@17/bin" $HOME/Library/Application\ Support/Coursier/bin /run/wrappers/bin $HOME/.nix-profile/bin /nix/var/nix/profiles/default/bin /run/current-system/sw/bin /etc/profiles/per-user/gnzh/bin /usr/local/bin $HOME/go/bin/ $HOME/.cargo/bin/ $HOME/.linkerd2/bin $HOME/.npm-packages/bin $HOME/.pub-cache/bin $HOME/.local/bin $HOME/.local/share/solana/install/active_release/bin $HOME/.deno/bin /home/gnzh/.config/netlify/helper/bin $PYENV_ROOT/bin

if test (which pyenv 2>/dev/null)
  pyenv init - | source
end


# set fish_function_path $fish_function_path $HOME/.config/plugin-foreign-env/functions

#fenv source $HOME/.nix-profile/etc/profile.d/hm-session-vars.sh
