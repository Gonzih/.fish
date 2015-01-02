function nix-search
	set -l user (whoami)
	set -l file "/tmp/nix-search-cache-$user"

	# Delete file if older than 3 days
	find $file -type f -mtime +3 -delete 2>1 >/dev/null

	if test -e $file
		grep -i "$argv" $file | sed 's/  \+/|/g' | column -t -s'|'
	else
		echo "Recreating nix search cache."
		nix-env -qaP --description '*' > $file
	end
end
