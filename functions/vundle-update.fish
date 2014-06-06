function vundle-update
	vim -c "execute \"PluginUpdate\" | q | q"
	cd ~/.vim/bundle/vimproc.vim; and make
	cd
end
