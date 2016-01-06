function dotfiles-update
	for dir in ~ ~/.vim ~/.config/mc ~/.config/fish ~/.xmonad ~/.mutt
		echo "Updating $dir"
		cd $dir; and git pull
	end

	neobundle-update
	rbenv-update

	cd
end
