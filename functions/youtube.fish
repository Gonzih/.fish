function youtube
	youtube-dl -o '%(title)s.%(ext)s' --restrict-filenames $argv
end
