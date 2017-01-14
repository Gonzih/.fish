function dotfiles-update
	set -l dirs ~ ~/.vim ~/.config/mc ~/.config/fish ~/.xmonad ~/.mutt

	for dir in $dirs
		echo "Stashing $dir"
		cd $dir; and git stash
	end

	cd ~; and git pull; and ansible-playbook provision.yml

	for dir in $dirs
		echo "Stashing $dir"
		cd $dir; and git stash pop
	end

	rbenv-update
	# dein-update
	xmonad --recompile

	cd
end
