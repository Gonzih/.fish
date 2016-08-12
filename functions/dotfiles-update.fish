function dotfiles-update
	set -l dirs ~ ~/.vim ~/.config/mc ~/.config/fish ~/.xmonad ~/.mutt

	for dir in $dirs
		echo "Stashing $dir"
		cd $dir; and git stash
	end

	cd ~; and git pull; and ansible-playbook --ask-sudo-pass provision.yml

	for dir in $dirs
		echo "Stashing $dir"
		cd $dir; and git stash pop
	end

	rbenv-update
	neobundle-update
	xmonad --recompile

	cd
end
