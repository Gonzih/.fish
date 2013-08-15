function youtube
	youtube-dl -o '%(stitle)s.%(ext)s' $argv
end
