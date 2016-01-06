function neobundle-update
	vim +NeoBundleInstall! +qall
	cd ~/.vim/bundle/vimproc.vim; and rm -f autoload/*.so; and make
	p
end
