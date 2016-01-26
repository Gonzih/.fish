function youtube-play
	cd /tmp
	set -l fname (youtube-dl --get-filename $argv[1])
	and youtube-dl -c $argv[1]
	vlc --play-and-exit "/tmp/$fname"
end
