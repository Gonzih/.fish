function dotfiles-update
	for dir in ~ ~/.vim ~/.config/mc ~/.config/fish ~/.xmonad ~/.mutt
		echo "Updating $dir"
		cd $dir; and git pull
	end

	vundle-update
	rbenv-update

	cd
end
