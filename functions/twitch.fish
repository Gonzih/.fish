function twitch
	if test -n "$argv[2]"
		set quality $argv[2]
	else
		set quality best
	end

	streamlink "https://twitch.tv/$argv[1]" $quality
end
