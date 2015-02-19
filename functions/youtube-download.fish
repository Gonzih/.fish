function youtube-play -d "Download given url in to given directory"
	cd $argv[1]
	and youtube-dl -c $argv[2]
end
