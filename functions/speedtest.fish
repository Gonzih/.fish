function speedtest
	pv /dev/zero | ssh $argv[1] 'cat > /dev/null'
end
