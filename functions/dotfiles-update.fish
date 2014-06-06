function dotfiles-update
	for dir in ~ ~/.vim ~/.mc ~/.config/fish ~/.xmonad ~/.mutt
		cd $dir; and git stash; and git pull; and git stash apply
	end

	vundle-update
	rbenv-update
end
