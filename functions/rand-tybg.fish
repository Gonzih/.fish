function rand-tybg
	set -l wall (rand-wallpaper)
	if test -x /usr/bin/tybg
		/usr/bin/tybg $wall
		echo "Setting wallpaper to \"$wall\""
	end
end
