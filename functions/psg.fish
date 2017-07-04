function psg
	ps aux | head -n 1
	ps aux | awk "/awk/ {next}; /$argv/"
end
