function nix-search
	nix-env -qaP --description '*' | grep -i "$argv"
end
