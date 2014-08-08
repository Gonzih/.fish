function vundle-update
	vim -c "execute \"PluginUpdate\" | q | q"
	cd ~/.vim/bundle/vimproc.vim; and rm autoload/*.so; and make
	cd
end
