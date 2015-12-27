function youtube-stream
	wget (youtube-dl --format 22/17/18 --get-url --cookies=/tmp/ytcookie.txt $argv[1]) -O - | mplayer -cache 8192 -cookies -cookies-file /tmp/ytcookie.txt -
end
