function youtube-stream
	mplayer -cookies -cookies-file /tmp/ytcookie.txt (youtube-dl -g --cookies=/tmp/ytcookie.txt $argv[1])
end
