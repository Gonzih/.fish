function nix-upgrade
	sudo nixos-rebuild switch --upgrade
	nix-env --upgrade

	set -l user (whoami)
	set -l file "/tmp/nix-search-cache-$user"
	rm -f $file
end
