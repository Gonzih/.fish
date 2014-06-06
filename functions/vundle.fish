function vundle
	vim -c "execute \"PluginInstall\" | qa!"
	cd ~/.vim/bundle/vimproc.vim; and make
	cd
end
