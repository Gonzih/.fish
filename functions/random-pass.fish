function random-pass
	date +%s | sha256sum | head -c 64; echo
end
