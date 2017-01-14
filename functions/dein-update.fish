function dein-update
	vim -E -s -c 'source ~/.vimrc' -c 'call dein#update()' -c 'qall'
end
