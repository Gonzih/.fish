function psg
	ps aux | head -n 1
	ps aux | grep $argv
end
