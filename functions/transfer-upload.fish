function transfer-upload
	set -l uuid (uuidgen)
	set -l extension (echo $argv[1] | sed 's/^.*\.\(.*\)$/\1/')
	set -l fname "$uuid.$extension"

	curl --silent --fail -H 'Max-Downloads: 1000'  -H 'Max-Days: 7' --upload-file $argv[1] https://transfer.sh/$fname | xclip -selection clipboard -i
end
