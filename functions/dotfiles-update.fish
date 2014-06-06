function dotfiles-update
	for dir in ~ ~/.vim ~/.mc ~/.config/fish ~/.xmonad ~/.mutt
		cd $dir; and git pull
	end

	vundle-update
	rbenv-update
end
