function start-gpg-agent
	gpg-agent --daemon --enable-ssh-support 2>/dev/null
end
