# Defined in /tmp/fish.x554WN/transfer-upload.fish @ line 2
function transfer-upload
	set -l uuid (uuidgen)
	set -l extension (echo $argv[1] | sed 's/^.*\.\(.*\)$/\1/')
	set -l fname "$uuid.$extension"

	curl --silent --fail -H 'Max-Downloads: 1000'  -H 'Max-Days: 3' --upload-file $argv[1] https://transfer.sh/$fname | xclip -selection clipboard -i
end
