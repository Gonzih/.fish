function rand-tybg
	set -l wall (rand-wallpaper)
	if test -x /usr/bin/tybg
		fish -c "sleep 1; and /usr/bin/tyalpha on" &
		/usr/bin/tybg $wall
		echo "Setting wallpaper to \"$wall\""
	end
end
