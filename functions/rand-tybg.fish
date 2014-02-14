function rand-tybg
	set -l wall (rand-wallpaper)
	tybg $wall
	echo "Setting wallpaper to \"$wall\""
end
