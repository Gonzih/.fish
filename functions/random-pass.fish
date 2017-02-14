function random-pass
	uuidgen | sha256sum | head -c 64; echo
end
