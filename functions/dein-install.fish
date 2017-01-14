function dein-install
	vim -E -s -c 'source ~/.vimrc' -c 'call dein#install()' -c 'qall'
end
