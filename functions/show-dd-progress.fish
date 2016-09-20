function show-dd-progress
	sudo kill -USR1 (pgrep '^dd')
end
