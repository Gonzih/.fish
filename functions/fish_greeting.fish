function fish_greeting
	set -g wall (rand-wallpaper)
	tybg $wall
    echo "Setting bg to $wall"
end
