function twitch-stream
	nohup livestreamer --player cvlc "$argv[1]" $argv[2]
end
