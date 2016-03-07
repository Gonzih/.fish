function dropbox-upload
	set -l uuid (uuidgen)
	set -l extension (echo $argv[1] | sed 's/^.*\.\(.*\)$/\1/')
	set -l fname "$uuid.$extension"
	mkdir -p ~/Dropbox/Public/tmp/
	cp $argv[1] ~/Dropbox/Public/tmp/$fname
	echo https://dl.dropboxusercontent.com/u/4109351/tmp/$fname | xclip -selection -i
	find ~/Dropbox/Public/tmp -type f -mtime +30 -delete
end
