function dotfiles-update
	cd ~; and git pull; and ansible-playbook provision.yml

	rbenv-update
	dein-update
	xmonad --recompile; and env DISPLAY:=0 xmonad --restart
	env DISPLAY:=0 xrdb -merge ~/.Xresources

	cd
end
