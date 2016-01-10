function youtube-stream
	vlc --play-and-exit (youtube-dl --format 22/17/18 --get-url --cookies=/tmp/ytcookie.txt $argv[1])
end
