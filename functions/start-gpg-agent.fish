function start-gpg-agent
  gpg-agent --daemon --enable-ssh-support 2>/dev/null
	set -gx SSH_AUTH_SOCK (gpgconf --list-dirs agent-ssh-socket)
end
