function youtube-play
	cd /tmp
	set -l fname (youtube-dl --get-filename $argv[1])
	and youtube-dl -c $argv[1]
	mplayer "/tmp/$fname"
end
