function rand-wallpaper
	set -l wallpapers ~/Dropbox/Public/pics/wall

	if test -d $wallpapers
		set -l wallpaper (find $wallpapers/ -type f | sort -R | head -n 1)
		echo $wallpaper
	end
end
