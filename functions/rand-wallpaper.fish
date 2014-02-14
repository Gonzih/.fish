function rand-wallpaper
	set -l wallpapers ~/Dropbox/Public/pics/wall
	set -l wallpaper (find $wallpapers/ -type f | sort -R | head -n 1)
	echo $wallpaper
end
